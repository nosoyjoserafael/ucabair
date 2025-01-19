
DECLARE
    nuevo_av_cod INT;
	nuevo_pru_cod INT;
	fila RECORD;
	material RECORD;
	id_pieza INT;
	nuevo_cons_cod INT;
	nuevo_pi_cod INT;
	nuevo_equipo_cod INT;
	nuevo_maq_cod INT;
	todo_joya INT;
BEGIN
	--FLOOR(random() * (max - min + 1)) + min
	--WITH random_number AS (
		--SELECT FLOOR(random() * (10 - 1 + 1)) + 1 AS num
	--)
	--SELECT num FROM random_number
	
	nuevo_av_cod := nextval('av_cod_seq');
	INSERT INTO public.avion (avion_cod, fk_modelo) --Avion a construir
    VALUES (nuevo_av_cod,Mod_cod);

	FOR i IN 1..5 LOOP --Generar Pruebas del avion
		nuevo_pru_cod := nextval('prueba_cod_seq');

		WITH random_number AS (
		    SELECT FLOOR(random() * (10 - 1 + 1)) + 1 AS num
		)
		INSERT INTO public.prueba (pru_cod, "fk_tipoPrueba")
    	VALUES (nuevo_pru_cod,(SELECT num FROM random_number) + 1);
		
		INSERT INTO public.avi_pru (avipr_fecha_ini, fk_avion, fk_prueba)
    	VALUES (CURRENT_DATE, nuevo_av_cod, nuevo_pru_cod);
    END LOOP;

	nuevo_cons_cod := nextval('cons_cod_seq');
	INSERT INTO public.construccion (cons_cod, cons_fecha_ini, fk_avion) -- CONSTRUCCION DEL AVION
	VALUES (nuevo_cons_cod, CURRENT_DATE, nuevo_av_cod);
	
	nuevo_equipo_cod := nextval('equi_cod_seq'); --Creacion Equipo del proyecto/construccion
	Insert INTO public."Equipo" ("Equi_cod", "fk_construccion")
	VALUES (nuevo_equipo_cod, nuevo_cons_cod);

	WITH random_number AS (
	    SELECT FLOOR(random() * (12 - 1 + 1)) + 1 AS num
	)
	Insert INTO public.maq_cons (macon_fechasig_ini, fk_maqui, fk_construc) --Asignar maquinaria a la construccion/proyecto
	VALUES (CURRENT_DATE, (SELECT num FROM random_number),nuevo_cons_cod);

	WITH random_number AS (
	    SELECT FLOOR(random() * (12 - 1 + 1)) + 1 AS num
	)
	Insert INTO public.cons_per(consper_fechasig_ini, fk_construccion, fk_personal) --Asignar personal a la construccion/proyecto
	VALUES (CURRENT_DATE, nuevo_cons_cod, (SELECT num FROM random_number));
	
	-- Validacion que se puede construir el avion y se actualiza el inventario respectivo
	FOR fila IN (SELECT cantidad, "fk_TPieza" FROM public."Mod_Tpie" WHERE fk_modelo = Mod_cod) LOOP --Recorre el Mod_Tpie del Modelo que se quiere construir
		IF (SELECT pie_cantidad FROM public.pieza WHERE fk_tpieza = fila."fk_TPieza") - fila.cantidad >= 0 THEN --Hay suficientes piezas en el inventario
			UPDATE public.pieza
			SET pie_cantidad = pie_cantidad - fila.cantidad
			WHERE fk_tpieza = fila."fk_TPieza";
		ELSE -- No hay suficientes piezas en el inventario
			todo_joya := todo_joya + 1;
			FOR material IN (SELECT cantidad, "fk_TpMaterial" FROM public.recetario WHERE "fk_tpPieza" = fila."fk_TPieza") LOOP --Recorre el recetario de la pieza que se quiere construir
				IF (SELECT SUM(mat_cantidad) FROM public.material WHERE "fk_tpMaterial" = material."fk_TMaterial" AND fk_sede = '2') - material.cantidad >= 0 THEN -- Hay suficientes materiales en la sede de Maracay
					UPDATE public.material
					SET mat_cantidad = mat_cantidad - material.cantidad
					WHERE "fk_tpMaterial" = material.fk_TMaterial AND fk_sede = '2';

					--Construir pieza:
					IF EXISTS(SELECT * FROM public.pieza WHERE fk_tpieza = fila."fk_TPieza") THEN --Ya existe en almacen
						UPDATE public.pieza
						SET pie_cantidad = pie_cantidad + 1
						WHERE fk_tpieza = fila."fk_TPieza";
						nuevo_pi_cod := (SELECT pie_cod FROM public.pieza WHERE fk_tpieza = fila."fk_TPieza");
					ELSE --No existe en almacen
						nuevo_pi_cod := nextval('pie_cod_seq');
						INSERT INTO public.pieza (pie_cod, pie_fecha_in, fk_tpieza, pie_cantidad)
    					VALUES (nuevo_pi_cod, CURRENT_DATE, fila."fk_TPieza", '1');
					END IF;
					

					INSERT INTO public."Cons_Pi" (fk_construccion, fk_pieza) -- Asociar pieza con construccion
    				VALUES (nuevo_cons_cod, nuevo_pi_cod);

					INSERT INTO public.est_pie (estpi_fecha_ini, fk_estatus, fk_pie) -- Establecer estatus pieza
    				VALUES (CURRENT_DATE, 8, nuevo_pi_cod);
					
				ELSE -- No hay suficientes materiales en inventario
					PERFORM insertar_compra((SELECT tipo_mat_nombre
											FROM tipo_material
    										WHERE tipo_mat_cod = material."fk_TpMaterial"), 
							200);
				END IF;
		    END LOOP; --Loop Materiales
		END IF;
    END LOOP; --Loop Piezas

	INSERT INTO public.est_avion (estav_fecha_ini, fk_estatus, fk_avion) -- Establecer estatus avion
	VALUES (CURRENT_DATE, 8, nuevo_av_cod);

END;
