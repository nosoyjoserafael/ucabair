--SECUENCIAS

-- SEQUENCE: public.area_seq

-- DROP SEQUENCE IF EXISTS public.area_seq;

CREATE SEQUENCE IF NOT EXISTS public.area_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.area_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.asignacion_seq

-- DROP SEQUENCE IF EXISTS public.asignacion_seq;

CREATE SEQUENCE IF NOT EXISTS public.asignacion_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.asignacion_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.asistencia_seq

-- DROP SEQUENCE IF EXISTS public.asistencia_seq;

CREATE SEQUENCE IF NOT EXISTS public.asistencia_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.asistencia_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.avion_seq

-- DROP SEQUENCE IF EXISTS public.avion_seq;

CREATE SEQUENCE IF NOT EXISTS public.avion_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.avion_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.beneficiario_seq

-- DROP SEQUENCE IF EXISTS public.beneficiario_seq;

CREATE SEQUENCE IF NOT EXISTS public.beneficiario_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.beneficiario_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.car_cod_seq

-- DROP SEQUENCE IF EXISTS public.car_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.car_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.car_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.carac_cod_seq

-- DROP SEQUENCE IF EXISTS public.carac_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.carac_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.carac_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.caracteristica_carac_cod_seq

-- DROP SEQUENCE IF EXISTS public.caracteristica_carac_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.caracteristica_carac_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.caracteristica_carac_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.cliente_seq

-- DROP SEQUENCE IF EXISTS public.cliente_seq;

CREATE SEQUENCE IF NOT EXISTS public.cliente_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.cliente_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.compra_compr_cod_seq

-- DROP SEQUENCE IF EXISTS public.compra_compr_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.compra_compr_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.compra_compr_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.cons_cod_seq

-- DROP SEQUENCE IF EXISTS public.cons_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.cons_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.cons_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.correo_seq

-- DROP SEQUENCE IF EXISTS public.correo_seq;

CREATE SEQUENCE IF NOT EXISTS public.correo_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.correo_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.detalle_compra_detcomp_cod_seq

-- DROP SEQUENCE IF EXISTS public.detalle_compra_detcomp_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.detalle_compra_detcomp_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.detalle_compra_detcomp_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.equi_cod_seq

-- DROP SEQUENCE IF EXISTS public.equi_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.equi_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.equi_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.equi_per_equiper_cod_seq

-- DROP SEQUENCE IF EXISTS public.equi_per_equiper_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.equi_per_equiper_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.equi_per_equiper_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.equipo_seq

-- DROP SEQUENCE IF EXISTS public.equipo_seq;

CREATE SEQUENCE IF NOT EXISTS public.equipo_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.equipo_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.estatus_estat_cod_seq

-- DROP SEQUENCE IF EXISTS public.estatus_estat_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.estatus_estat_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.estatus_estat_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.horario_seq

-- DROP SEQUENCE IF EXISTS public.horario_seq;

CREATE SEQUENCE IF NOT EXISTS public.horario_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.horario_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.lugar_lu_cod_seq

-- DROP SEQUENCE IF EXISTS public.lugar_lu_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.lugar_lu_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.lugar_lu_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.maq_cod_seq

-- DROP SEQUENCE IF EXISTS public.maq_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.maq_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.maq_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.maqcons_cod_seq

-- DROP SEQUENCE IF EXISTS public.maqcons_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.maqcons_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.maqcons_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.maquinaria_seq

-- DROP SEQUENCE IF EXISTS public.maquinaria_seq;

CREATE SEQUENCE IF NOT EXISTS public.maquinaria_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.maquinaria_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.material_mat_cod_seq

-- DROP SEQUENCE IF EXISTS public.material_mat_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.material_mat_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.material_mat_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.metodo_pago_metpago_cod_seq

-- DROP SEQUENCE IF EXISTS public.metodo_pago_metpago_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.metodo_pago_metpago_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.metodo_pago_metpago_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.mod_cod_seq

-- DROP SEQUENCE IF EXISTS public.mod_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.mod_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.mod_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.modelo_seq

-- DROP SEQUENCE IF EXISTS public.modelo_seq;

CREATE SEQUENCE IF NOT EXISTS public.modelo_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.modelo_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.pago_pago_cod_seq

-- DROP SEQUENCE IF EXISTS public.pago_pago_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.pago_pago_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.pago_pago_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.pedido_pedi_cod_seq

-- DROP SEQUENCE IF EXISTS public.pedido_pedi_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.pedido_pedi_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.pedido_pedi_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.per_cod_seq

-- DROP SEQUENCE IF EXISTS public.per_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.per_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.per_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.persona_seq

-- DROP SEQUENCE IF EXISTS public.persona_seq;

CREATE SEQUENCE IF NOT EXISTS public.persona_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.persona_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.pie_cod_seq

-- DROP SEQUENCE IF EXISTS public.pie_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.pie_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.pie_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.pieza_sede_seq

-- DROP SEQUENCE IF EXISTS public.pieza_sede_seq;

CREATE SEQUENCE IF NOT EXISTS public.pieza_sede_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.pieza_sede_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.pieza_seq

-- DROP SEQUENCE IF EXISTS public.pieza_seq;

CREATE SEQUENCE IF NOT EXISTS public.pieza_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.pieza_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.privilegio_priv_cod_seq

-- DROP SEQUENCE IF EXISTS public.privilegio_priv_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.privilegio_priv_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.privilegio_priv_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.proveedor_prove_cod_seq

-- DROP SEQUENCE IF EXISTS public.proveedor_prove_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.proveedor_prove_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.proveedor_prove_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.pru_cod_seq

-- DROP SEQUENCE IF EXISTS public.pru_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.pru_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.pru_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.prueba_cod_seq

-- DROP SEQUENCE IF EXISTS public.prueba_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.prueba_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.prueba_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.rol_rol_cod_seq

-- DROP SEQUENCE IF EXISTS public.rol_rol_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.rol_rol_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.rol_rol_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.sede_sed_cod_seq

-- DROP SEQUENCE IF EXISTS public.sede_sed_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.sede_sed_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.sede_sed_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.solicitud_sede_solsed_cod_seq

-- DROP SEQUENCE IF EXISTS public.solicitud_sede_solsed_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.solicitud_sede_solsed_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.solicitud_sede_solsed_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.tasa_cambio_tdc_cod_seq

-- DROP SEQUENCE IF EXISTS public.tasa_cambio_tdc_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.tasa_cambio_tdc_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.tasa_cambio_tdc_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.te_seq

-- DROP SEQUENCE IF EXISTS public.te_seq;

CREATE SEQUENCE IF NOT EXISTS public.te_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.te_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.tipo_maquinaria_seq

-- DROP SEQUENCE IF EXISTS public.tipo_maquinaria_seq;

CREATE SEQUENCE IF NOT EXISTS public.tipo_maquinaria_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.tipo_maquinaria_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.tipo_material_tipo_mat_cod_seq

-- DROP SEQUENCE IF EXISTS public.tipo_material_tipo_mat_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.tipo_material_tipo_mat_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.tipo_material_tipo_mat_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.tipo_pieza_seq

-- DROP SEQUENCE IF EXISTS public.tipo_pieza_seq;

CREATE SEQUENCE IF NOT EXISTS public.tipo_pieza_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.tipo_pieza_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.tipo_prueba_tprueba_cod_seq

-- DROP SEQUENCE IF EXISTS public.tipo_prueba_tprueba_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.tipo_prueba_tprueba_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.tipo_prueba_tprueba_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.titulo_seq

-- DROP SEQUENCE IF EXISTS public.titulo_seq;

CREATE SEQUENCE IF NOT EXISTS public.titulo_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.titulo_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.tlf_seq

-- DROP SEQUENCE IF EXISTS public.tlf_seq;

CREATE SEQUENCE IF NOT EXISTS public.tlf_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.tlf_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.tpmaq_cod_seq

-- DROP SEQUENCE IF EXISTS public.tpmaq_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.tpmaq_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.tpmaq_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.tppieza_cod_seq

-- DROP SEQUENCE IF EXISTS public.tppieza_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.tppieza_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.tppieza_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.tppru_cod_seq

-- DROP SEQUENCE IF EXISTS public.tppru_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.tppru_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.tppru_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.user_cod_seq

-- DROP SEQUENCE IF EXISTS public.user_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.user_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.user_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.usuario_seq

-- DROP SEQUENCE IF EXISTS public.usuario_seq;

CREATE SEQUENCE IF NOT EXISTS public.usuario_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.usuario_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.venta_ven_cod_seq

-- DROP SEQUENCE IF EXISTS public.venta_ven_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.venta_ven_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.venta_ven_cod_seq
    OWNER TO grupo_rsm;

-- SEQUENCE: public.zona_zon_cod_seq

-- DROP SEQUENCE IF EXISTS public.zona_zon_cod_seq;

CREATE SEQUENCE IF NOT EXISTS public.zona_zon_cod_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;
    
ALTER SEQUENCE public.zona_zon_cod_seq
    OWNER TO grupo_rsm;

--PROCEDURES

-- PROCEDURE: public.delete_asistencia(integer)

-- DROP PROCEDURE IF EXISTS public.delete_asistencia(integer);

CREATE OR REPLACE PROCEDURE public.delete_asistencia(
	p_asis_cod integer)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN         
    DELETE FROM public.asistencia WHERE asis_cod = p_asis_cod;
END;
$BODY$;

ALTER PROCEDURE public.delete_asistencia(integer)
    OWNER TO grupo_rsm;


-- PROCEDURE: public.delete_equipo(integer)

-- DROP PROCEDURE IF EXISTS public.delete_equipo(integer);

CREATE OR REPLACE PROCEDURE public.delete_equipo(
	p_equi_cod integer)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN         
    DELETE FROM public.trabajo_equipo WHERE fk_equipo = p_equi_cod;
    DELETE FROM public.equi_per WHERE fk_equipo = p_equi_cod;
    DELETE FROM public."Equipo" WHERE "Equi_cod" = p_equi_cod;
END;
$BODY$;

ALTER PROCEDURE public.delete_equipo(integer)
    OWNER TO grupo_rsm;


-- PROCEDURE: public.delete_personal(integer)

-- DROP PROCEDURE IF EXISTS public.delete_personal(integer);

CREATE OR REPLACE PROCEDURE public.delete_personal(
	p_per_cod integer)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN     
    DELETE FROM public.asistencia WHERE fk_personal = p_per_cod;
    DELETE FROM public.beneficiario WHERE fk_personal = p_per_cod;    
    DELETE FROM public.cons_per WHERE fk_personal = p_per_cod;
    DELETE FROM public.equi_per WHERE fk_personal = p_per_cod;
    DELETE FROM public.per_car WHERE fk_personal = p_per_cod;
    DELETE FROM public.per_pru WHERE fk_personal = p_per_cod;
    DELETE FROM public.red_social WHERE fk_personal = p_per_cod;
    DELETE FROM public.telefono WHERE fk_personal = p_per_cod;
    DELETE FROM public.titulo WHERE fk_personal = p_per_cod;
    DELETE FROM public.usuario WHERE fk_personal = p_per_cod;
    DELETE FROM public."Personal" WHERE "Per_cod" = p_per_cod;
END;
$BODY$;

ALTER PROCEDURE public.delete_personal(integer)
    OWNER TO grupo_rsm;


-- PROCEDURE: public.delete_proveedor(integer)

-- DROP PROCEDURE IF EXISTS public.delete_proveedor(integer);

CREATE OR REPLACE PROCEDURE public.delete_proveedor(
	p_prove_cod integer)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN     
    DELETE FROM public.pro_mat WHERE fk_proveedor = p_prove_cod;
    DELETE FROM public.proveedor WHERE prove_cod = p_prove_cod;
END;
$BODY$;

ALTER PROCEDURE public.delete_proveedor(integer)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.delete_tipo_prueba(integer)

-- DROP PROCEDURE IF EXISTS public.delete_tipo_prueba(integer);

CREATE OR REPLACE PROCEDURE public.delete_tipo_prueba(
	p_tprueba_cod integer)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    DELETE FROM public.tipo_prueba
    WHERE tprueba_cod = p_tprueba_cod;
END;
$BODY$;

ALTER PROCEDURE public.delete_tipo_prueba(integer)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_asistencia(date, time without time zone, time without time zone, character varying, integer)

-- DROP PROCEDURE IF EXISTS public.post_asistencia(date, time without time zone, time without time zone, character varying, integer);

CREATE OR REPLACE PROCEDURE public.post_asistencia(
	p_fecha_asistida date,
	p_hora_entrada time without time zone,
	p_hora_salida time without time zone,
	p_user_nombre character varying DEFAULT NULL::character varying,
	p_per_cod integer DEFAULT NULL::integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_asignacion INTEGER;
BEGIN
    IF p_user_nombre IS NOT NULL AND p_user_nombre not in (Select user_nombre from usuario) THEN
        RAISE EXCEPTION 'Error, el nombre de usuario no existe';
    ELSIF p_per_cod IS NOT NULL AND p_per_cod not in (Select "Per_cod" from "Personal") THEN
        RAISE EXCEPTION 'Error, debe ingresar la fecha de asistencia';
    END IF;

    IF p_user_nombre IS NOT NULL THEN
        SELECT asig_cod INTO v_asignacion
        FROM asignacion
        WHERE fk_personal = (
            SELECT fk_personal 
            FROM usuario 
            WHERE user_nombre = p_user_nombre
        );

        INSERT INTO asistencia(asis_fecha_asistida, asis_hora_entrada, asis_hora_salida, fk_asignacion)
        VALUES(p_fecha_asistida, p_hora_entrada, p_hora_salida, v_asignacion);     
    ELSIF p_per_cod IS NOT NULL THEN
        SELECT asig_cod INTO v_asignacion
        FROM asignacion
        WHERE fk_personal = p_per_cod;

        INSERT INTO asistencia(asis_fecha_asistida, asis_hora_entrada, asis_hora_salida, fk_asignacion)
        VALUES(p_fecha_asistida, p_hora_entrada, p_hora_salida, v_asignacion);   
    ELSE
        RAISE EXCEPTION 'Error, debe ingresar el nombre del usuario';
    END IF;    
END;
$BODY$;

ALTER PROCEDURE public.post_asistencia(date, time without time zone, time without time zone, character varying, integer)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_cheque(integer, character varying, numeric, integer, integer, integer)

-- DROP PROCEDURE IF EXISTS public.post_cheque(integer, character varying, numeric, integer, integer, integer);

CREATE OR REPLACE PROCEDURE public.post_cheque(
	p_che_numero integer,
	p_che_banco character varying,
	p_monto_total numeric,
	p_tasa_cambio_cod integer,
	p_avion_cod integer,
	p_cliente_cod integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_metpago_cod INTEGER;
    v_pedido_cod INTEGER;
    v_venta_cod  INTEGER;
BEGIN

    v_pedido_cod := nextval('pedido_pedi_cod_seq');
    INSERT INTO pedido (pedi_cod, pedi_fecha, fk_cliente, fk_avion)
    VALUES (v_pedido_cod, current_date, p_cliente_cod, p_avion_cod);

    v_venta_cod := nextval('venta_ven_cod_seq');
    INSERT INTO venta (ven_cod, ven_monto, ven_cantidad, ven_fecha, fk_pedido)
    VALUES (v_venta_cod, p_monto_total, 1, current_date, v_pedido_cod);

    v_metpago_cod := nextval('metodo_pago_metpago_cod_seq');
    INSERT INTO transferencia (metpago_cod, fk_tasa_cambio, che_numero, che_banco)
    VALUES (v_metpago_cod,p_tasa_cambio_cod, p_che_numero, p_che_banco);

    INSERT INTO pago (pago_hora_fecha, pago_monto_final, fk_pago_movil, fk_venta)
    VALUES (current_timestamp, p_monto_total, v_metpago_cod, v_venta_cod);

END;
$BODY$;

ALTER PROCEDURE public.post_cheque(integer, character varying, numeric, integer, integer, integer)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_correo(character varying, character varying, integer, integer)

-- DROP PROCEDURE IF EXISTS public.post_correo(character varying, character varying, integer, integer);

CREATE OR REPLACE PROCEDURE public.post_correo(
	p_cor_alias character varying,
	p_cor_dominio character varying,
	p_cod_persona integer DEFAULT NULL::integer,
	p_cod_proveedor integer DEFAULT NULL::integer)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN

    IF p_cod_persona IS NOT NULL THEN
        INSERT INTO correo(cor_alias, cor_dominio, fk_persona)
        VALUES (p_cor_alias, p_cor_dominio, p_cod_persona);
    ELSE
        INSERT INTO correo(cor_alias, cor_dominio, fk_proveedor)
        VALUES (p_cor_alias, p_cor_dominio, p_cod_proveedor);
    END IF;

END;
$BODY$;

ALTER PROCEDURE public.post_correo(character varying, character varying, integer, integer)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_efectivo(character varying, numeric, integer, integer, integer)

-- DROP PROCEDURE IF EXISTS public.post_efectivo(character varying, numeric, integer, integer, integer);

CREATE OR REPLACE PROCEDURE public.post_efectivo(
	p_efe_denominacion character varying,
	p_monto_total numeric,
	p_tasa_cambio_cod integer,
	p_avion_cod integer,
	p_cliente_cod integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_metpago_cod INTEGER;
    v_pedido_cod INTEGER;
    v_venta_cod  INTEGER;
BEGIN

    v_pedido_cod := nextval('pedido_pedi_cod_seq');
    INSERT INTO pedido (pedi_cod, pedi_fecha, fk_cliente, fk_avion)
    VALUES (v_pedido_cod, current_date, p_cliente_cod, p_avion_cod);

    v_venta_cod := nextval('venta_ven_cod_seq');
    INSERT INTO venta (ven_cod, ven_monto, ven_cantidad, ven_fecha, fk_pedido)
    VALUES (v_venta_cod, p_monto_total, 1, current_date, v_pedido_cod);

    v_metpago_cod := nextval('metodo_pago_metpago_cod_seq');
    INSERT INTO efectivo (metpago_cod, fk_tasa_cambio, efe_denominacion)
    VALUES (v_metpago_cod,p_tasa_cambio_cod, p_efe_denominacion);

    INSERT INTO pago (pago_hora_fecha, pago_monto_final, fk_pago_movil, fk_venta)
    VALUES (current_timestamp, p_monto_total, v_metpago_cod, v_venta_cod);

END;
$BODY$;

ALTER PROCEDURE public.post_efectivo(character varying, numeric, integer, integer, integer)
    OWNER TO grupo_rsm;


-- PROCEDURE: public.post_equipo(integer[], character varying, date, numeric)

-- DROP PROCEDURE IF EXISTS public.post_equipo(integer[], character varying, date, numeric);

CREATE OR REPLACE PROCEDURE public.post_equipo(
	p_personal_cods integer[],
	p_nombre_trabajo character varying,
	p_tiempo_estim date,
	p_fk_construccion numeric)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_equi_cod INTEGER;
BEGIN

    INSERT INTO public."Equipo" (fk_construccion)
        VALUES (p_fk_construccion)
    RETURNING "Equi_cod" into v_equi_cod;

    INSERT INTO public.trabajo_equipo (te_nombre_trabajo, te_tiempo_estim, fk_equipo)
    VALUES (p_nombre_trabajo, p_tiempo_estim, v_equi_cod);

    FOR i IN 1..array_length(p_personal_cods, 1)
    LOOP
        INSERT INTO public.equi_per (fk_personal,fk_equipo)
        VALUES (p_personal_cods[i], v_equi_cod);
    END LOOP;

END;
$BODY$;

ALTER PROCEDURE public.post_equipo(integer[], character varying, date, numeric)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_pago_movil(integer, numeric, integer, integer, integer)

-- DROP PROCEDURE IF EXISTS public.post_pago_movil(integer, numeric, integer, integer, integer);

CREATE OR REPLACE PROCEDURE public.post_pago_movil(
	p_n_cuenta integer,
	p_monto_total numeric,
	p_tasa_cambio_cod integer,
	p_avion_cod integer,
	p_cliente_cod integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_metpago_cod INTEGER;
    v_pedido_cod INTEGER;
    v_venta_cod  INTEGER;
BEGIN

    v_pedido_cod := nextval('pedido_pedi_cod_seq');
    INSERT INTO pedido (pedi_cod, pedi_fecha, fk_cliente, fk_avion)
    VALUES (v_pedido_cod, current_date, p_cliente_cod, p_avion_cod);

    v_venta_cod := nextval('venta_ven_cod_seq');
    INSERT INTO venta (ven_cod, ven_monto, ven_cantidad, ven_fecha, fk_pedido)
    VALUES (v_venta_cod, p_monto_total, 1, current_date, v_pedido_cod);

    v_metpago_cod := nextval('metodo_pago_metpago_cod_seq');
    INSERT INTO pago_movil (metpago_cod, fk_tasa_cambio, pm_numero_cuenta)
    VALUES (v_metpago_cod,p_tasa_cambio_cod, p_n_cuenta);

    INSERT INTO pago (pago_hora_fecha, pago_monto_final, fk_pago_movil, fk_venta)
    VALUES (current_timestamp, p_monto_total, v_metpago_cod, v_venta_cod);

END;
$BODY$;

ALTER PROCEDURE public.post_pago_movil(integer, numeric, integer, integer, integer)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_personal(character varying, integer, character varying, numeric, integer, text, date)

-- DROP PROCEDURE IF EXISTS public.post_personal(character varying, integer, character varying, numeric, integer, text, date);

CREATE OR REPLACE PROCEDURE public.post_personal(
	p_per_nombre character varying,
	p_per_ci integer,
	p_per_per_apellido character varying,
	p_per_per_experiencia numeric,
	p_fk_lugar integer,
	p_per_dir text,
	p_per_fecha_ini date)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    INSERT INTO public."Personal"
    (
        "Per_nombre",
        "Per_ci",
        "Per_Per_apellido",
        "Per_Per_experiencia",
        "fk_lugar",
        "Per_dir",
        "Per_fecha_ini"
    )
    VALUES (
        p_Per_nombre,
        p_Per_ci,
        p_Per_Per_apellido,
        p_Per_Per_experiencia,
        p_fk_lugar,
        p_Per_dir,
        p_Per_fecha_ini
    );

END;
$BODY$;

ALTER PROCEDURE public.post_personal(character varying, integer, character varying, numeric, integer, text, date)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_proveedor(character varying, numeric[], numeric[], numeric[])

-- DROP PROCEDURE IF EXISTS public.post_proveedor(character varying, numeric[], numeric[], numeric[]);

CREATE OR REPLACE PROCEDURE public.post_proveedor(
	p_prove_nombre character varying,
	p_tmats_cods numeric[],
	p_tmats_cantidades numeric[],
	p_tmats_costos numeric[])
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_prove_cod INTEGER;   
BEGIN

    INSERT INTO public."proveedor" (prove_cod, prove_nombre, prove_ci, fk_lugar)
        VALUES (nextval('proveedor_prove_cod_seq'), p_prove_nombre, floor(random() * (30000000 - 10000000 + 1) + 10000000), floor(random() * (1506 - 361 + 1) + 361))
    RETURNING prove_cod into v_prove_cod;

    FOR i IN 1..array_length(p_tmats_cods, 1)
    LOOP    
        INSERT INTO public."pro_mat" (fk_proveedor, fk_tmat, promat_cantidad, promat_costo)
          VALUES (v_prove_cod, p_tmats_cods[i], p_tmats_cantidades[i], p_tmats_costos[i]);
    END LOOP;

END;
$BODY$;

ALTER PROCEDURE public.post_proveedor(character varying, numeric[], numeric[], numeric[])
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_prueba(integer, numeric)

-- DROP PROCEDURE IF EXISTS public.post_prueba(integer, numeric);

CREATE OR REPLACE PROCEDURE public.post_prueba(
	p_fk_tipoprueba integer,
	p_pru_duracion_real numeric DEFAULT NULL::numeric)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    INSERT INTO prueba ("fk_tipoPrueba", pru_duracion_real)
    VALUES (p_fk_tipoPrueba, p_pru_duracion_real);
END;
$BODY$;

ALTER PROCEDURE public.post_prueba(integer, numeric)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_tarjeta_credito(integer, date, character varying, numeric, integer, integer, integer)

-- DROP PROCEDURE IF EXISTS public.post_tarjeta_credito(integer, date, character varying, numeric, integer, integer, integer);

CREATE OR REPLACE PROCEDURE public.post_tarjeta_credito(
	p_tc_cvv integer,
	p_tc_fecha_expiracion date,
	p_tc_banco character varying,
	p_monto_total numeric,
	p_tasa_cambio_cod integer,
	p_avion_cod integer,
	p_cliente_cod integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_metpago_cod INTEGER;
    v_pedido_cod INTEGER;
    v_venta_cod  INTEGER;
BEGIN

    v_pedido_cod := nextval('pedido_pedi_cod_seq');
    INSERT INTO pedido (pedi_cod, pedi_fecha, fk_cliente, fk_avion)
    VALUES (v_pedido_cod, current_date, p_cliente_cod, p_avion_cod);

    v_venta_cod := nextval('venta_ven_cod_seq');
    INSERT INTO venta (ven_cod, ven_monto, ven_cantidad, ven_fecha, fk_pedido)
    VALUES (v_venta_cod, p_monto_total, 1, current_date, v_pedido_cod);

    v_metpago_cod := nextval('metodo_pago_metpago_cod_seq');
    INSERT INTO t_credito (metpago_cod, fk_tasa_cambio, tc_cvv, tc_fecha_vec, tc_banco)
    VALUES (v_metpago_cod,p_tasa_cambio_cod, p_tc_cvv, p_tc_fecha_expiracion, p_tc_banco);

    INSERT INTO pago (pago_hora_fecha, pago_monto_final, fk_pago_movil, fk_venta)
    VALUES (current_timestamp, p_monto_total, v_metpago_cod, v_venta_cod);

END;
$BODY$;

ALTER PROCEDURE public.post_tarjeta_credito(integer, date, character varying, numeric, integer, integer, integer)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_tarjeta_debito(integer, date, character varying, numeric, integer, integer, integer)

-- DROP PROCEDURE IF EXISTS public.post_tarjeta_debito(integer, date, character varying, numeric, integer, integer, integer);

CREATE OR REPLACE PROCEDURE public.post_tarjeta_debito(
	p_td_numero integer,
	p_td_fecha date,
	p_td_banco character varying,
	p_monto_total numeric,
	p_tasa_cambio_cod integer,
	p_avion_cod integer,
	p_cliente_cod integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_metpago_cod INTEGER;
    v_pedido_cod INTEGER;
    v_venta_cod  INTEGER;
BEGIN

    v_pedido_cod := nextval('pedido_pedi_cod_seq');
    INSERT INTO pedido (pedi_cod, pedi_fecha, fk_cliente, fk_avion)
    VALUES (v_pedido_cod, current_date, p_cliente_cod, p_avion_cod);

    v_venta_cod := nextval('venta_ven_cod_seq');
    INSERT INTO venta (ven_cod, ven_monto, ven_cantidad, ven_fecha, fk_pedido)
    VALUES (v_venta_cod, p_monto_total, 1, current_date, v_pedido_cod);

    v_metpago_cod := nextval('metodo_pago_metpago_cod_seq');
    INSERT INTO t_debito (metpago_cod, fk_tasa_cambio, td_numero, td_fecha, td_banco)
    VALUES (v_metpago_cod,p_tasa_cambio_cod, p_td_numero, p_td_fecha, p_td_banco);

    INSERT INTO pago (pago_hora_fecha, pago_monto_final, fk_pago_movil, fk_venta)
    VALUES (current_timestamp, p_monto_total, v_metpago_cod, v_venta_cod);

END;
$BODY$;

ALTER PROCEDURE public.post_tarjeta_debito(integer, date, character varying, numeric, integer, integer, integer)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_telefono(numeric, bigint, integer, integer)

-- DROP PROCEDURE IF EXISTS public.post_telefono(numeric, bigint, integer, integer);

CREATE OR REPLACE PROCEDURE public.post_telefono(
	p_tlf_cod_area numeric,
	p_tlf_numero bigint,
	p_per_cod integer DEFAULT NULL::integer,
	p_cod_proveedor integer DEFAULT NULL::integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_tipo_persona VARCHAR;
BEGIN

    IF p_per_cod IS NOT NULL THEN
        SELECT tipo from todas_las_personas where
        "Per_cod" = p_per_cod INTO v_tipo_persona;

        IF v_tipo_persona = 'natural' THEN
            INSERT INTO telefono(tlf_cod_area, tlf_numero, fk_natural)
            VALUES (p_tlf_cod_area, p_tlf_numero, p_per_cod);
        ELSIF v_tipo_persona = 'juridica' THEN
            INSERT INTO telefono(tlf_cod_area, tlf_numero, fk_juridica)
            VALUES (p_tlf_cod_area, p_tlf_numero, p_per_cod);
        ELSE
            INSERT INTO telefono(tlf_cod_area, tlf_numero, fk_personal)
            VALUES (p_tlf_cod_area, p_tlf_numero, p_per_cod);
        END IF;
    ELSE
        INSERT INTO telefono(tlf_cod_area, tlf_numero, fk_proveedor)
        VALUES (p_tlf_cod_area, p_tlf_numero, p_cod_proveedor);
    END IF;

END;
$BODY$;

ALTER PROCEDURE public.post_telefono(numeric, bigint, integer, integer)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_tipo_prueba(character varying, text, numeric)

-- DROP PROCEDURE IF EXISTS public.post_tipo_prueba(character varying, text, numeric);

CREATE OR REPLACE PROCEDURE public.post_tipo_prueba(
	p_tprueba_nombre character varying,
	p_tprueba_descripcion text,
	p_tprueba_duracion_estim numeric)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    INSERT INTO public.tipo_prueba (
        tprueba_nombre,
        tprueba_descripcion,
        tprueba_duracion_estim
    )
    VALUES (
        p_tprueba_nombre,
        p_tprueba_descripcion,
        p_tprueba_duracion_estim
    );
END;
$BODY$;

ALTER PROCEDURE public.post_tipo_prueba(character varying, text, numeric)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.post_transferencia(date, character varying, numeric, integer, integer, integer)

-- DROP PROCEDURE IF EXISTS public.post_transferencia(date, character varying, numeric, integer, integer, integer);

CREATE OR REPLACE PROCEDURE public.post_transferencia(
	p_tr_fecha date,
	p_tr_banco character varying,
	p_monto_total numeric,
	p_tasa_cambio_cod integer,
	p_avion_cod integer,
	p_cliente_cod integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_metpago_cod INTEGER;
    v_pedido_cod INTEGER;
    v_venta_cod  INTEGER;
BEGIN

    v_pedido_cod := nextval('pedido_pedi_cod_seq');
    INSERT INTO pedido (pedi_cod, pedi_fecha, fk_cliente, fk_avion)
    VALUES (v_pedido_cod, current_date, p_cliente_cod, p_avion_cod);

    v_venta_cod := nextval('venta_ven_cod_seq');
    INSERT INTO venta (ven_cod, ven_monto, ven_cantidad, ven_fecha, fk_pedido)
    VALUES (v_venta_cod, p_monto_total, 1, current_date, v_pedido_cod);

    v_metpago_cod := nextval('metodo_pago_metpago_cod_seq');
    INSERT INTO transferencia (metpago_cod, fk_tasa_cambio, tr_fecha, tr_banco)
    VALUES (v_metpago_cod,p_tasa_cambio_cod, p_tr_fecha, p_tr_banco);

    INSERT INTO pago (pago_hora_fecha, pago_monto_final, fk_pago_movil, fk_venta)
    VALUES (current_timestamp, p_monto_total, v_metpago_cod, v_venta_cod);

END;
$BODY$;

ALTER PROCEDURE public.post_transferencia(date, character varying, numeric, integer, integer, integer)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.put_asistencia(integer, date, time without time zone, time without time zone)

-- DROP PROCEDURE IF EXISTS public.put_asistencia(integer, date, time without time zone, time without time zone);

CREATE OR REPLACE PROCEDURE public.put_asistencia(
	p_asis_cod integer,
	p_fecha_asistida date,
	p_hora_entrada time without time zone,
	p_hora_salida time without time zone)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    UPDATE asistencia
    set asis_fecha_asistida = p_fecha_asistida, 
    asis_hora_entrada = p_hora_entrada, 
    asis_hora_salida = p_hora_salida 
    where asis_cod = p_asis_cod;   
END;
$BODY$;

ALTER PROCEDURE public.put_asistencia(integer, date, time without time zone, time without time zone)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.put_equipo(integer, integer, character varying, date, date)

-- DROP PROCEDURE IF EXISTS public.put_equipo(integer, integer, character varying, date, date);

CREATE OR REPLACE PROCEDURE public.put_equipo(
	p_equi_cod integer,
	p_te_cod integer,
	p_te_nombre_trabajo character varying DEFAULT NULL::character varying,
	p_te_tiempo_estim date DEFAULT NULL::date,
	p_te_tiempo_real date DEFAULT NULL::date)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN

    IF p_te_nombre_trabajo IS NOT NULL THEN
        UPDATE public.trabajo_equipo
        SET te_nombre_trabajo = p_te_nombre_trabajo
        WHERE p_equi_cod = fk_equipo AND te_cod = p_te_cod;
    END IF;
    IF p_te_tiempo_estim IS NOT NULL THEN
        UPDATE public.trabajo_equipo
        SET te_tiempo_estim = p_te_tiempo_estim
        WHERE p_equi_cod = fk_equipo AND te_cod = p_te_cod;
    END IF;
    IF p_te_tiempo_real IS NOT NULL THEN
        UPDATE public.trabajo_equipo
        SET te_tiempo_real = p_te_tiempo_real
        WHERE p_equi_cod = fk_equipo AND te_cod = p_te_cod;
    END IF;
END;
$BODY$;

ALTER PROCEDURE public.put_equipo(integer, integer, character varying, date, date)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.put_personal(integer, character varying, integer, character varying, numeric, integer, text, date)

-- DROP PROCEDURE IF EXISTS public.put_personal(integer, character varying, integer, character varying, numeric, integer, text, date);

CREATE OR REPLACE PROCEDURE public.put_personal(
	p_per_cod integer,
	p_per_nombre character varying,
	p_per_ci integer,
	p_per_per_apellido character varying,
	p_per_per_experiencia numeric,
	p_fk_lugar integer,
	p_per_dir text,
	p_per_fecha_ini date)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    UPDATE public."Personal"
    SET "Per_nombre" = p_Per_nombre,
        "Per_ci" = p_Per_ci,
        "Per_Per_apellido" = p_Per_Per_apellido,
        "Per_Per_experiencia" = p_Per_Per_experiencia,
        fk_lugar = p_fk_lugar,
        "Per_dir" = p_Per_dir,
        "Per_fecha_ini" = P_Per_fecha_ini
    WHERE "Per_cod" = p_per_cod;
END;
$BODY$;

ALTER PROCEDURE public.put_personal(integer, character varying, integer, character varying, numeric, integer, text, date)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.put_proveedor(integer, integer, integer, integer)

-- DROP PROCEDURE IF EXISTS public.put_proveedor(integer, integer, integer, integer);

CREATE OR REPLACE PROCEDURE public.put_proveedor(
	p_prove_cod integer,
	p_tmat_cod integer,
	p_tmat_cantidad integer,
	p_tmat_costo integer)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN     
    update public."pro_mat" set promat_cantidad = p_tmat_cantidad, promat_costo = p_tmat_costo
    where  fk_proveedor = p_prove_cod and fk_tmat = p_tmat_cod;
END;
$BODY$;

ALTER PROCEDURE public.put_proveedor(integer, integer, integer, integer)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.put_prueba(integer, numeric)

-- DROP PROCEDURE IF EXISTS public.put_prueba(integer, numeric);

CREATE OR REPLACE PROCEDURE public.put_prueba(
	p_pru_cod integer,
	p_pru_duracion_real numeric)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    UPDATE prueba
    SET pru_duracion_real = p_pru_duracion_real
    WHERE pru_cod = p_pru_cod;
END;

$BODY$;

ALTER PROCEDURE public.put_prueba(integer, numeric)
    OWNER TO grupo_rsm;

-- PROCEDURE: public.put_tipos_de_pruebas(integer, character varying, text, numeric)

-- DROP PROCEDURE IF EXISTS public.put_tipos_de_pruebas(integer, character varying, text, numeric);

CREATE OR REPLACE PROCEDURE public.put_tipos_de_pruebas(
	p_tprueba_cod integer,
	p_tprueba_nombre character varying,
	p_tprueba_descripcion text,
	p_tprueba_duracion_estim numeric)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    UPDATE tipo_prueba
    SET tprueba_nombre = p_tprueba_nombre,
        tprueba_descripcion = p_tprueba_descripcion,
        tprueba_duracion_estim = p_tprueba_duracion_estim
    WHERE tprueba_cod = p_tprueba_cod;
END;

$BODY$;

ALTER PROCEDURE public.put_tipos_de_pruebas(integer, character varying, text, numeric)
    OWNER TO grupo_rsm;

--FUNCTIONS

-- FUNCTION: public.ala_mas_usada()

-- DROP FUNCTION IF EXISTS public.ala_mas_usada();

CREATE OR REPLACE FUNCTION public.ala_mas_usada(
	)
    RETURNS TABLE(tipo_pieza_ala_id integer, nombre_ala character varying, n_modelos_con_ala bigint) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT
        tp.tp_cod,
        tp.tp_nombre,
        COUNT(mtp."fk_TPieza") AS n_modelos_con_ala
    FROM
        public.tipo_pieza tp
    JOIN
        public."Mod_Tpie" mtp ON tp.tp_cod = mtp."fk_TPieza"
    WHERE tp.tp_nombre LIKE '%Ala%'
    GROUP BY
        tp.tp_cod,
        tp.tp_nombre
    ORDER BY
        3 DESC
    LIMIT 1;
END;
$BODY$;

ALTER FUNCTION public.ala_mas_usada()
    OWNER TO grupo_rsm;

-- FUNCTION: public.aviones_mas_rentables()

-- DROP FUNCTION IF EXISTS public.aviones_mas_rentables();

CREATE OR REPLACE FUNCTION public.aviones_mas_rentables(
	)
    RETURNS TABLE(avion_cod integer, modelo_nombre character varying, cons_fecha_ini date, cons_fecha_fin date, tiempo_real_dias double precision, tiempo_estimado_dias integer, diferencia_dias double precision) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
   RETURN QUERY
    SELECT 
        a.avion_cod,
        m.mod_nombre,
        c.cons_fecha_ini,
        c.cons_fecha_fin,
        EXTRACT(DAY FROM AGE(c.cons_fecha_fin, c.cons_fecha_ini)) AS tiempo_real,
        c.cons_tiempo_estimado,
        c.cons_tiempo_estimado - EXTRACT(DAY FROM AGE(c.cons_fecha_fin, c.cons_fecha_ini)) AS diferencia
    FROM 
        avion a
    JOIN 
        construccion c ON a.avion_cod = c.fk_avion
    JOIN 
        modelo m ON m.mod_cod = a.fk_modelo
    WHERE 
        c.cons_fecha_fin IS NOT NULL AND c.cons_tiempo_estimado IS NOT NULL
    ORDER BY 
        diferencia DESC;
END;
$BODY$;

ALTER FUNCTION public.aviones_mas_rentables()
    OWNER TO grupo_rsm;

-- FUNCTION: public.calcular_horas_extra(integer, date, date)

-- DROP FUNCTION IF EXISTS public.calcular_horas_extra(integer, date, date);

CREATE OR REPLACE FUNCTION public.calcular_horas_extra(
	p_per_cod integer,
	p_fecha_desde date,
	p_fecha_hasta date)
    RETURNS TABLE(per_cod integer, horas_extra integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
    v_hora_entrada TIME WITHOUT TIME ZONE;
    v_hora_salida TIME WITHOUT TIME ZONE;
    v_hora_entrada_horario TIME WITHOUT TIME ZONE;
    v_hora_salida_horario TIME WITHOUT TIME ZONE;
    v_horas_extra INTERVAL := '0 hours';
    v_total_horas_extra INTEGER := 0;
BEGIN
    -- Verificar si el usuario existe
    IF p_per_cod IS NOT NULL AND p_per_cod NOT IN (SELECT "Per_cod" FROM "Personal") THEN
        RAISE EXCEPTION 'Error, el codigo de personal no existe';
    END IF;

    -- Obtener las horas de entrada y salida del horario regular del empleado
    SELECT hor.hora_entrada, hor.hora_salida
    INTO v_hora_entrada_horario, v_hora_salida_horario
    FROM horario hor
    JOIN asignacion asig ON hor.hora_cod = asig.fk_horario
    JOIN "Personal" per ON per."Per_cod" = asig.fk_personal
    WHERE per."Per_cod" = p_per_cod;

    -- Calcular las horas extra para todas las asistencias del usuario
    FOR v_hora_entrada, v_hora_salida IN
        SELECT asis.asis_hora_entrada, asis.asis_hora_salida
        FROM asistencia asis
        JOIN asignacion asig ON asis.fk_asignacion = asig.asig_cod
        JOIN "Personal" per ON asig.fk_personal = per."Per_cod"
        WHERE per."Per_cod" = p_per_cod
        AND asis.asis_fecha_asistida BETWEEN p_fecha_desde AND p_fecha_hasta
    LOOP
        IF v_hora_salida > v_hora_salida_horario THEN
            v_horas_extra := v_hora_salida - v_hora_salida_horario;
            v_total_horas_extra := v_total_horas_extra + FLOOR(EXTRACT(EPOCH FROM v_horas_extra) / 3600);
        END IF;
        IF v_hora_entrada < v_hora_entrada_horario THEN
            v_horas_extra := v_hora_entrada_horario - v_hora_entrada;
            v_total_horas_extra := v_total_horas_extra + FLOOR(EXTRACT(EPOCH FROM v_horas_extra) / 3600);
        END IF;
    END LOOP;

    RETURN QUERY
    SELECT p_per_cod, v_total_horas_extra;
END;
$BODY$;

ALTER FUNCTION public.calcular_horas_extra(integer, date, date)
    OWNER TO grupo_rsm;

-- FUNCTION: public.calcular_nomina(integer, date, date)

-- DROP FUNCTION IF EXISTS public.calcular_nomina(integer, date, date);

CREATE OR REPLACE FUNCTION public.calcular_nomina(
	p_per_cod integer,
	p_fecha_inicio date,
	p_fecha_fin date)
    RETURNS TABLE(per_cod integer, total_nomina numeric, asistencias integer, sueldo_base numeric, sueldo_hora_extra numeric, horas_extra_realizadas integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
    v_sueldo_base NUMERIC;
    v_horas_extra INTEGER;
    v_sueldo_hora_extra NUMERIC;
    v_asig_cod INTEGER;
    v_asistencias INTEGER;
    v_total_nomina NUMERIC;
BEGIN
    -- Verificar si el usuario existe
    IF p_per_cod IS NOT NULL AND p_per_cod NOT IN (SELECT "Per_cod" FROM "Persona") THEN
        RAISE EXCEPTION 'Error, el codigo del personal no existe';
    END IF;

    SELECT horas_extra from calcular_horas_extra(p_per_cod, p_fecha_inicio, p_fecha_fin) INTO v_horas_extra;

    -- Obtener el sueldo base y el sueldo por hora extra
    select pc.per_car_sueldo_base, car.car_sueldo_hora_extra
    INTO v_sueldo_base, v_sueldo_hora_extra
    from per_car pc, cargo car
    WHERE pc.fk_personal = p_per_cod and pc.fk_cargo = car.car_cod;

    -- obtener el codigo de su asignacion
    SELECT asig_cod
    INTO v_asig_cod
    FROM asignacion
    WHERE fk_personal = p_per_cod;

    -- Obtener la cantidad de veces que ha asistido
    SELECT COUNT(*)
    INTO v_asistencias
    FROM asistencia
    WHERE fk_asignacion = v_asig_cod
    AND asis_fecha_asistida BETWEEN p_fecha_inicio AND p_fecha_fin;

    -- Calcular el total de la nomina
    total_nomina := v_sueldo_base*v_asistencias + (v_sueldo_hora_extra * v_horas_extra)*v_asistencias;

    RETURN QUERY SELECT p_per_cod, total_nomina, v_asistencias, v_sueldo_base, v_sueldo_hora_extra, v_horas_extra;

END;
$BODY$;

ALTER FUNCTION public.calcular_nomina(integer, date, date)
    OWNER TO grupo_rsm;

-- FUNCTION: public.caracteristicas_modelos()

-- DROP FUNCTION IF EXISTS public.caracteristicas_modelos();

CREATE OR REPLACE FUNCTION public.caracteristicas_modelos(
	)
    RETURNS json
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
    resultados JSON;
BEGIN
    WITH carac_data AS (
        SELECT 
            c.carac_nombre AS caracteristica,
            m.mod_nombre,
            mc.mod_carac_cantidad || ' ' || c.carac_unidad_medida AS mod_carac_cantidad
        FROM public."modelo" m
        JOIN public."mod_carac" mc ON m.mod_cod = mc.fk_modelo
        JOIN public."caracteristica" c ON mc.fk_carac = c.carac_cod
    )
    SELECT json_agg(
        json_build_object(
            'resultado', 
            json_object_agg(mod_nombre, mod_carac_cantidad)
        )
    ) INTO resultados
    FROM (
        SELECT 
            caracteristica,
            mod_nombre,
            mod_carac_cantidad
        FROM carac_data
    ) AS subquery
    GROUP BY caracteristica;

    RETURN resultados;
END;
$BODY$;

ALTER FUNCTION public.caracteristicas_modelos()
    OWNER TO grupo_rsm;

-- FUNCTION: public.compra_avion(integer)

-- DROP FUNCTION IF EXISTS public.compra_avion(integer);

CREATE OR REPLACE FUNCTION public.compra_avion(
	mod_cod integer)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
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
	nuevo_zona_cod INT;
	nuevo_area_cod INT;
	nuevo_sedeCONS INT;
	todo_joya INT;
BEGIN
	todo_joya := 0;
	--FLOOR(random() * (max - min + 1)) + min
	--WITH random_number AS (
		--SELECT FLOOR(random() * (10 - 1 + 1)) + 1 AS num
	--)
	--SELECT num FROM random_number
	
	nuevo_av_cod := nextval('avion_seq');
	INSERT INTO public.avion (avion_cod, fk_modelo) -- Insertar avion a construir en Avion
    VALUES (nuevo_av_cod,Mod_cod);

	INSERT INTO public.est_avion (estav_fecha_ini, fk_estatus, fk_avion) -- Establecer estatus avion
	VALUES (CURRENT_DATE, 8, nuevo_av_cod);

	FOR i IN 1..5 LOOP --Generar Pruebas del avion
		nuevo_pru_cod := nextval('prueba_cod_seq');

		WITH random_number AS (
		    SELECT FLOOR(random() * (10 - 1)) + 1 AS num
		)
		INSERT INTO public.prueba (pru_cod, "fk_tipoPrueba")
    	VALUES (nuevo_pru_cod,(SELECT num FROM random_number) + 1);
		
		INSERT INTO public.avi_pru (avipr_fecha_ini, fk_avion, fk_pru)
    	VALUES (CURRENT_DATE, nuevo_av_cod, nuevo_pru_cod);
    END LOOP;

	nuevo_cons_cod := nextval('cons_cod_seq');
	INSERT INTO public.construccion (cons_cod, cons_fecha_ini, fk_avion) -- CONSTRUCCION DEL AVION
	VALUES (nuevo_cons_cod, CURRENT_DATE, nuevo_av_cod);

	nuevo_sedeCONS := (SELECT FLOOR(random() * (5 - 2 + 1)) + 2); --Se selecciona sede donde se va a construir

	nuevo_zona_cod := nextval('zona_zon_cod_seq');
	Insert INTO public."zona" (zon_cod, zon_nombre, fk_sede) --Se crea zona dentro de la sede
	VALUES (nuevo_zona_cod, 'Zona construccion', nuevo_sedeCONS);

	nuevo_area_cod := nextval('area_seq');
	Insert INTO public."area" (ar_cod, ar_nombre, fk_zona) --Se crea area dentro de la zona
	VALUES (nuevo_area_cod, nuevo_area_cod, nuevo_zona_cod);

	Insert INTO public."area_cons" (fk_area, fk_const) --Se asigna area a la construccion
	VALUES (nuevo_area_cod, nuevo_cons_cod);
	
	nuevo_equipo_cod := nextval('equipo_seq'); --Creacion Equipo del proyecto/construccion
	Insert INTO public."Equipo" ("Equi_cod", "fk_construccion")
	VALUES (nuevo_equipo_cod, nuevo_cons_cod);

	WITH random_number AS (
	    SELECT FLOOR(random() * ((SELECT max(maq_cod) FROM public.maquinaria) - 1 + 1) + 1) AS num
	)
	Insert INTO public.maq_cons (macon_fechasig_ini, fk_maqui, fk_construc) --Asignar maquinaria a la construccion/proyecto
	VALUES (CURRENT_DATE, (SELECT num FROM random_number),nuevo_cons_cod);

	WITH random_number AS (
	    SELECT FLOOR(random() * (132 - 93 + 1) + 93) as num
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
			FOR material IN (SELECT cantidad, "fk_tpMaterial" FROM public.recetario WHERE "fk_tpPieza" = fila."fk_TPieza") LOOP --Recorre el recetario de la pieza que se quiere construir
				IF (SELECT mat_cantidad FROM public.material WHERE "fk_TMaterial" = material."fk_tpMaterial" AND fk_sede = nuevo_sedeCONS AND mat_fecha_in IS NOT NULL AND mat_fecha_out IS NULL) - material.cantidad >= 0 THEN -- Hay suficientes materiales en la sede en la que está la construccion actual
					
					UPDATE public.material
					SET mat_cantidad = mat_cantidad - material.cantidad
					WHERE "fk_TMaterial" = material."fk_tpMaterial" 
						AND fk_sede = nuevo_sedeCONS 
						AND mat_fecha_in IS NOT NULL 
						AND mat_fecha_out IS NULL;

				ELSE -- No hay suficientes materiales en inventario de la sede actual
					
					PERFORM solicitar_material --Hace una solicitud del tipo de material que falta y la cantidad necesaria, pide desde la sede actual, que busque en la de La Guaira
					(
						material."fk_tpMaterial",
						material.cantidad,
						nuevo_sedeCONS,
						1
					);
					todo_joya := todo_joya + 1;
				END IF;
		    END LOOP; --Loop Materiales
				--IF (todo_joya > 0) THEN
				--	RETURN;
				--END IF;
				RAISE NOTICE 'ayuda';
			--Construir pieza:
			IF EXISTS(SELECT * FROM public.pieza WHERE fk_tpieza = fila."fk_TPieza") THEN --Ya existe en almacen
				UPDATE public.pieza
				SET pie_cantidad = pie_cantidad + 1
				WHERE fk_tpieza = fila."fk_TPieza";
				nuevo_pi_cod := (SELECT pie_cod FROM public.pieza WHERE fk_tpieza = fila."fk_TPieza");
				
			ELSE --No existe en almacen
				nuevo_pi_cod := nextval('pieza_seq');
				
				INSERT INTO public.pieza (pie_cod, pie_fecha_in, fk_tpieza, pie_cantidad)
				VALUES (nuevo_pi_cod, CURRENT_DATE, fila."fk_TPieza", '1');

				INSERT INTO public.est_pie (estpi_fecha_ini, fk_estatus, fk_pie) -- Establecer estatus pieza
				VALUES (CURRENT_DATE, 8, nuevo_pi_cod);
			END IF;
			
			INSERT INTO public."Cons_Pi" (fk_construccion, fk_pieza) -- Asociar pieza con construccion
			VALUES (nuevo_cons_cod, nuevo_pi_cod);
			
		END IF;
    END LOOP; --Loop Piezas

	RETURN nuevo_av_cod;
END;

$BODY$;

ALTER FUNCTION public.compra_avion(integer)
    OWNER TO grupo_rsm;

-- FUNCTION: public.compra_materiales_proveedor(integer, numeric, integer)

-- DROP FUNCTION IF EXISTS public.compra_materiales_proveedor(integer, numeric, integer);

CREATE OR REPLACE FUNCTION public.compra_materiales_proveedor(
	p_tipo_material_cod integer,
	p_cantidad numeric,
	p_proveedor_cod integer DEFAULT NULL::integer)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
    v_costo_unitario NUMERIC;
    v_id_compra INTEGER;
    v_id_det_compra INTEGER;
    v_cod_material INTEGER;
    v_monto_total NUMERIC;
    v_prove_cod INTEGER;
BEGIN    
    -- Obtener el costo unitario del material
    SELECT promat_costo INTO v_costo_unitario
    FROM pro_mat
    WHERE fk_tmat = p_tipo_material_cod;

    -- Calcular el monto total
    v_monto_total := p_cantidad * v_costo_unitario;

    -- Insertar la compra

    IF p_proveedor_cod IS NOT NULL THEN
        INSERT INTO compra (compr_preciotot, fk_proveedor)
        VALUES (v_monto_total, p_proveedor_cod)
        RETURNING compr_cod, fk_proveedor INTO v_id_compra, v_prove_cod;
    ELSE
        INSERT INTO compra (compr_preciotot, fk_proveedor)
        VALUES (v_monto_total, (SELECT prove_cod
                                FROM proveedor
                                WHERE prove_cod in (SELECT fk_proveedor
                                                    FROM pro_mat
                                                    WHERE fk_tmat = p_tipo_material_cod AND
                                                    fk_proveedor = prove_cod AND
                                                    promat_cantidad >= p_cantidad)
                                ORDER BY random()
                                LIMIT 1))
        RETURNING compr_cod, fk_proveedor INTO v_id_compra, v_prove_cod;
    END IF;

    -- Actualizar la cantidad de material en el proveedor
    UPDATE pro_mat
    SET promat_cantidad = promat_cantidad - p_cantidad
    WHERE fk_tmat = p_tipo_material_cod
    AND fk_proveedor = v_prove_cod;

    IF (SELECT count(*) FROM material WHERE "fk_TMaterial" = p_tipo_material_cod AND fk_sede = 1) = 0 THEN
        
        v_cod_material := nextval('material_mat_cod_seq');
        -- Insertar el material para la sede de La Guaira
        INSERT INTO material (mat_cod,mat_cantidad, mat_fecha_in, "fk_TMaterial", fk_sede)
        VALUES (v_cod_material,p_cantidad, current_date, p_tipo_material_cod, 1);

        insert into est_mat(estmat_fecha_ini, fk_estatus, fk_mat)
        VALUES (current_date, 7, v_cod_material);
    ELSE
        -- Actualizar el stock del material
        UPDATE material 
        SET mat_cantidad = mat_cantidad + p_cantidad
        WHERE "fk_TMaterial" = p_tipo_material_cod AND fk_sede = 1 AND mat_fecha_in IS NOT NULL AND mat_fecha_out IS NULL;
    END IF;

    -- Insertar el detalle de la compra
    INSERT INTO detalle_compra (detcomp_fecha_compra, detcomp_cantidad, fk_compra, fk_material)
    VALUES (current_date, p_cantidad, v_id_compra, p_tipo_material_cod)
    RETURNING detcomp_cod INTO v_id_det_compra;

    RETURN v_id_det_compra;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE EXCEPTION 'Material no encontrado';
    WHEN OTHERS THEN
        RAISE;
END;
$BODY$;

ALTER FUNCTION public.compra_materiales_proveedor(integer, numeric, integer)
    OWNER TO grupo_rsm;

-- FUNCTION: public.dame_tipo_prueba(integer)

-- DROP FUNCTION IF EXISTS public.dame_tipo_prueba(integer);

CREATE OR REPLACE FUNCTION public.dame_tipo_prueba(
	fk_prueba integer)
    RETURNS character varying
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
    resultado VARCHAR;
BEGIN
    SELECT tp.tprueba_nombre
    INTO resultado  -- Usar INTO para asignar el resultado de la consulta a la variable
    FROM public.prueba pr
    JOIN public.tipo_prueba tp ON pr."fk_tipoPrueba" = tp.tprueba_cod
    WHERE pr.pru_cod = fk_prueba;

    RETURN resultado;  -- Agregar punto y coma aquí
END;
$BODY$;

ALTER FUNCTION public.dame_tipo_prueba(integer)
    OWNER TO grupo_rsm;

-- FUNCTION: public.delete_modelo(text)

-- DROP FUNCTION IF EXISTS public.delete_modelo(text);

CREATE OR REPLACE FUNCTION public.delete_modelo(
	p_nombre text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  v_mod_cod INTEGER;
BEGIN
  SELECT mod_cod INTO v_mod_cod
  FROM public."modelo"
  WHERE mod_nombre = p_Nombre;

  IF NOT FOUND THEN
    RAISE EXCEPTION 'Modelo no encontrado';
  END IF;

  DELETE FROM public."mod_carac"
  WHERE fk_modelo = v_mod_cod;

  DELETE FROM public."modelo"
  WHERE mod_cod = v_mod_cod;
END;
$BODY$;

ALTER FUNCTION public.delete_modelo(text)
    OWNER TO grupo_rsm;

-- FUNCTION: public.equipo_mas_eficiente()

-- DROP FUNCTION IF EXISTS public.equipo_mas_eficiente();

CREATE OR REPLACE FUNCTION public.equipo_mas_eficiente(
	)
    RETURNS TABLE(equipo_cod integer, n_tareas_realizadas bigint, n_tareas_realizadas_eficientemente bigint) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        e."Equi_cod",
        COUNT(te.te_cod) AS n_tareas_realizadas,
        COUNT(CASE WHEN te.te_tiempo_real <= te.te_tiempo_estim THEN 1 END) AS n_tareas_realizadas_eficientemente
    FROM 
        "Equipo" e
    JOIN 
        trabajo_equipo te ON e."Equi_cod" = te.fk_equipo
    GROUP BY 
        e."Equi_cod"
    ORDER BY 
        n_tareas_realizadas_eficientemente DESC
    LIMIT 1;
END;
$BODY$;

ALTER FUNCTION public.equipo_mas_eficiente()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_asistencia_particular(integer, character varying)

-- DROP FUNCTION IF EXISTS public.get_asistencia_particular(integer, character varying);

CREATE OR REPLACE FUNCTION public.get_asistencia_particular(
	p_per_cod integer DEFAULT NULL::integer,
	p_user_nombre character varying DEFAULT NULL::character varying)
    RETURNS TABLE(asis_fecha_asistida date, asis_hora_entrada time without time zone, asis_hora_salida time without time zone) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN

    IF p_per_cod IS NOT NULL AND p_per_cod not in (Select "Per_cod" from "Personal") THEN
        RAISE EXCEPTION 'Error, el codigo de personal no existe';
    ELSIF p_user_nombre IS NOT NULL AND p_user_nombre not in (Select user_nombre from usuario) THEN
        RAISE EXCEPTION 'Error, el nombre de usuario no existe';
    END IF;

    IF p_per_cod IS NOT NULL THEN
        RETURN QUERY 
        SELECT asis.asis_fecha_asistida, asis.asis_hora_entrada, asis.asis_hora_salida
        FROM asistencia asis, asignacion asig        
        WHERE asis.fk_asignacion = asig.asig_cod and asig.fk_personal = p_per_cod;
    ELSIF p_user_nombre IS NOT NULL THEN
        RETURN QUERY 
        SELECT asis.asis_fecha_asistida, asis.asis_hora_entrada, asis.asis_hora_salida
        FROM asistencia asis, asignacion asig
        WHERE asis.fk_asignacion = asig.asig_cod and 
        asig.fk_personal = (
            SELECT fk_personal 
            FROM usuario 
            WHERE user_nombre = p_user_nombre);
    ELSIF p_per_cod IS NOT NULL AND p_user_nombre IS NOT NULL THEN
        RETURN QUERY 
        SELECT asis.asis_fecha_asistida, asis.asis_hora_entrada, asis.asis_hora_salida
        FROM asistencia asis, asignacion asig        
        WHERE asis.fk_asignacion = asig.asig_cod and asig.fk_personal = p_per_cod;
    ELSE
        RAISE EXCEPTION 'Error, debe ingresar ya sea el codigo del usuario o el nombre del usuario';
    END IF;    
END;
$BODY$;

ALTER FUNCTION public.get_asistencia_particular(integer, character varying)
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_asistencias()

-- DROP FUNCTION IF EXISTS public.get_asistencias();

CREATE OR REPLACE FUNCTION public.get_asistencias(
	)
    RETURNS TABLE(nombre_personal character varying, asis_fecha_asistida date, asis_hora_asistida time without time zone, asis_hora_salida time without time zone, fk_personal integer, asis_cod integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT per."Per_nombre", asis.asis_fecha_asistida, asis.asis_hora_entrada, asis.asis_hora_salida, asig.fk_personal, asis.asis_cod
    FROM "Personal" as per, asistencia as asis, asignacion as asig
	where per."Per_cod" = asig.fk_personal and 
    asig.asig_cod = asis.fk_asignacion
	order by 3;
END;
$BODY$;

ALTER FUNCTION public.get_asistencias()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_aviones_construccion()

-- DROP FUNCTION IF EXISTS public.get_aviones_construccion();

CREATE OR REPLACE FUNCTION public.get_aviones_construccion(
	)
    RETURNS TABLE(cod_construccion numeric, cod_avion_construccion integer, cons_fecha_ini date, modelo_avion_construccion character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT c.cons_cod, c.fk_avion, c.cons_fecha_ini, mod.mod_nombre
    FROM construccion c 
    JOIN avion a ON c.fk_avion = a.avion_cod
    JOIN modelo mod ON a.fk_modelo = mod.mod_cod
    WHERE a.avion_fecha_fabfinalizado IS NULL;
END;
$BODY$;

ALTER FUNCTION public.get_aviones_construccion()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_carac()

-- DROP FUNCTION IF EXISTS public.get_carac();

CREATE OR REPLACE FUNCTION public.get_carac(
	)
    RETURNS TABLE(mod_nombre character varying, carac_nombre character varying, mod_carac_cantidad numeric, carac_unidad_medida character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
	SELECT m.mod_nombre, c.carac_nombre, mc.mod_carac_cantidad, c.carac_unidad_medida
	  FROM public."modelo" m
	  JOIN public."mod_carac" mc ON m.mod_cod = mc.fk_modelo
	  JOIN public."caracteristica" c ON mc.fk_carac = c.carac_cod;
END;

$BODY$;

ALTER FUNCTION public.get_carac()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_carac_procesada()

-- DROP FUNCTION IF EXISTS public.get_carac_procesada();

CREATE OR REPLACE FUNCTION public.get_carac_procesada(
	)
    RETURNS json
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  modelos JSON;
BEGIN
  WITH carac_data AS (
    SELECT 
      mod_nombre, 
      carac_nombre, 
      mod_carac_cantidad || ' ' || carac_unidad_medida AS mod_carac_cantidad
    FROM get_carac()
  )
  SELECT json_object_agg(mod_nombre, carac_data) INTO modelos
  FROM (
    SELECT 
      mod_nombre, 
      json_object_agg(carac_nombre, mod_carac_cantidad) AS carac_data
    FROM carac_data
    GROUP BY mod_nombre
  ) AS subquery;

  RETURN modelos;
END;
$BODY$;

ALTER FUNCTION public.get_carac_procesada()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_equipos()

-- DROP FUNCTION IF EXISTS public.get_equipos();

CREATE OR REPLACE FUNCTION public.get_equipos(
	)
    RETURNS TABLE(equi_cod integer, te_cod integer, nombre_trabajo character varying, tiempo_estim date, tiempo_real date) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT eq."Equi_cod", te.te_cod, te.te_nombre_trabajo, te.te_tiempo_estim, te.te_tiempo_real
    from "Equipo" eq JOIN trabajo_equipo te ON eq."Equi_cod" = te.fk_equipo;
END;
$BODY$;

ALTER FUNCTION public.get_equipos()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_modelo()

-- DROP FUNCTION IF EXISTS public.get_modelo();

CREATE OR REPLACE FUNCTION public.get_modelo(
	)
    RETURNS TABLE(cod integer, nombre character varying, descrip text, costo numeric) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
	SELECT *
	FROM public."modelo";
END;
$BODY$;

ALTER FUNCTION public.get_modelo()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_persona(integer)

-- DROP FUNCTION IF EXISTS public.get_persona(integer);

CREATE OR REPLACE FUNCTION public.get_persona(
	p_per_cod integer)
    RETURNS TABLE(nombre character varying, cedula integer, cons_fecha_ini timestamp without time zone, lugar_de_residencia integer, direccion character varying, tlf_cod_area numeric, tlf_numero bigint, cor_alias character varying, cor_dominio character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN

        RETURN QUERY
        SELECT p."Per_nombre", p."Per_ci", 
                p."Per_fecha_ini", p.fk_lugar, 
                p."Per_dir", t.tlf_cod_area, 
                t.tlf_numero, c.cor_alias, c.cor_dominio
        FROM "Persona" p 
        LEFT JOIN correo c ON p."Per_cod" = c.fk_persona
        LEFT JOIN telefono t ON p."Per_cod" = t.fk_persona 
            OR t.fk_natural = p."Per_cod" 
            OR t.fk_juridica = p."Per_cod"
            OR t.fk_personal = p."Per_cod"
        WHERE p."Per_cod" = p_per_cod;

END;
$BODY$;

ALTER FUNCTION public.get_persona(integer)
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_proveedor(integer)

-- DROP FUNCTION IF EXISTS public.get_proveedor(integer);

CREATE OR REPLACE FUNCTION public.get_proveedor(
	p_proveedor_cod integer)
    RETURNS TABLE(nombre character varying, cedula integer, lugar_de_residencia integer, tlf_cod_area numeric, tlf_numero bigint, cor_alias character varying, cor_dominio character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN

        RETURN QUERY
        SELECT p.prove_nombre, p.prove_ci, 
                p.fk_lugar, 
                t.tlf_cod_area, 
                t.tlf_numero, c.cor_alias, c.cor_dominio
        FROM proveedor p 
        LEFT JOIN correo c ON p.prove_cod = c.fk_proveedor
        LEFT JOIN telefono t ON p.prove_cod = t.fk_proveedor 
        WHERE p.prove_cod = p_proveedor_cod;

END;
$BODY$;

ALTER FUNCTION public.get_proveedor(integer)
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_pruebas()

-- DROP FUNCTION IF EXISTS public.get_pruebas();

CREATE OR REPLACE FUNCTION public.get_pruebas(
	)
    RETURNS TABLE(pru_cod integer, tprueba_nombre character varying, tprueba_descripcion text, tprueba_duracion_estim numeric, pru_duracion_real numeric) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT p.pru_cod, tp.tprueba_nombre, tp.tprueba_descripcion,
			tp.tprueba_duracion_estim, p.pru_duracion_real
    FROM prueba p, tipo_prueba tp
	where p."fk_tipoPrueba" = tp.tprueba_cod
	order by 1;
END;
$BODY$;

ALTER FUNCTION public.get_pruebas()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_rechazados()

-- DROP FUNCTION IF EXISTS public.get_rechazados();

CREATE OR REPLACE FUNCTION public.get_rechazados(
	)
    RETURNS TABLE(codigo integer, nombre text, conteo bigint) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT
        a.avion_cod AS codigo,
        'Avion -' || m.mod_nombre AS nombre,
        COUNT(*) AS conteo
    FROM 
        estatus e 
    JOIN
        est_avion ea ON e.estat_cod = ea.fk_estatus
    JOIN
        avion a ON ea.fk_avion = a.avion_cod
    JOIN
        modelo m ON m.mod_cod = a.fk_modelo
    WHERE
        e.estat_cod = 6
    GROUP BY
        a.avion_cod, m.mod_nombre
    UNION ALL
    SELECT
        mat.mat_cod AS codigo,
        'Material -' || tm.tipo_mat_nombre AS nombre,
        COUNT(*) AS conteo
    FROM 
        estatus e 
    JOIN
        est_mat em ON e.estat_cod = em.fk_estatus
    JOIN
        material mat ON em.fk_mat = mat.mat_cod
    JOIN
        tipo_material tm ON mat."fk_TMaterial" = tm.tipo_mat_cod
    WHERE
        e.estat_cod = 6
    GROUP BY
        mat.mat_cod, tm.tipo_mat_nombre
    UNION ALL
    SELECT
        p.pie_cod AS codigo,
        'Pieza -' || tp.tp_nombre AS nombre,
        COUNT(*) AS conteo
    FROM 
        estatus e 
    JOIN
        est_pie ep ON e.estat_cod = ep.fk_estatus
    JOIN
        pieza p ON p.pie_cod = ep.fk_pie
    JOIN
        tipo_pieza tp ON p.fk_tpieza = tp.tp_cod
    WHERE
        e.estat_cod = 6
    GROUP BY
        p.pie_cod, tp.tp_nombre
    UNION ALL
    SELECT
        pru.pru_cod AS codigo,
        'Prueba -' || tpru.tprueba_nombre AS nombre,
        COUNT(*) AS conteo
    FROM 
        estatus e 
    JOIN
        est_pru epru ON e.estat_cod = epru.fk_est
    JOIN
        prueba pru ON epru.fk_pru = pru.pru_cod
    JOIN
        tipo_prueba tpru ON pru."fk_tipoPrueba" = tpru.tprueba_cod
    WHERE
        e.estat_cod = 6
    GROUP BY
        pru.pru_cod, tpru.tprueba_nombre;
END;
$BODY$;

ALTER FUNCTION public.get_rechazados()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_reporte15()

-- DROP FUNCTION IF EXISTS public.get_reporte15();

CREATE OR REPLACE FUNCTION public.get_reporte15(
	)
    RETURNS TABLE(proveedor character varying, material character varying, cantidad numeric, costo numeric) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$

BEGIN
    RETURN QUERY
	SELECT p.prove_nombre, tm.tipo_mat_nombre, pm.promat_cantidad, pm.promat_costo
	  FROM public.proveedor p
	  JOIN public.pro_mat pm ON p.prove_cod = pm.fk_proveedor
	  JOIN public.tipo_material tm ON tm.tipo_mat_cod = pm.fk_tmat;
END;

$BODY$;

ALTER FUNCTION public.get_reporte15()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_reporte16()

-- DROP FUNCTION IF EXISTS public.get_reporte16();

CREATE OR REPLACE FUNCTION public.get_reporte16(
	)
    RETURNS TABLE(material character varying, cantidad integer, proveedor character varying, cod_compra integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
	SELECT tm.tipo_mat_nombre, dc.detcomp_cantidad, p.prove_nombre, c.compr_cod
	  FROM public.proveedor p
	  JOIN public.compra c ON p.prove_cod = c.fk_proveedor
	  JOIN public.detalle_compra dc ON c.compr_cod = dc.fk_compra
	  JOIN public.material m ON dc.fk_material = m.mat_cod
	  JOIN public.tipo_material tm ON m."fk_TMaterial" = tm.tipo_mat_cod;
END;
$BODY$;

ALTER FUNCTION public.get_reporte16()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_reporte17()

-- DROP FUNCTION IF EXISTS public.get_reporte17();

CREATE OR REPLACE FUNCTION public.get_reporte17(
	)
    RETURNS TABLE(proveedor character varying, codigopago integer, fecha timestamp without time zone, monto numeric) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
	SELECT p.prove_nombre, pa.pago_cod, pa.pago_hora_fecha, pa.pago_monto_final
	  FROM public.proveedor p
	  JOIN public.compra c ON p."prove_cod" = c.fk_proveedor
	  JOIN public.pago pa ON c.compr_cod = pa.fk_compra;
END;
$BODY$;

ALTER FUNCTION public.get_reporte17()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_reporte18()

-- DROP FUNCTION IF EXISTS public.get_reporte18();

CREATE OR REPLACE FUNCTION public.get_reporte18(
	)
    RETURNS TABLE(modelo character varying, pieza character varying, cantidad numeric) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
	SELECT m.mod_nombre, tp.tp_nombre, mtp.cantidad
	  FROM public.modelo m
	  JOIN public."Mod_Tpie" mtp ON m.mod_cod = mtp.fk_modelo
	  JOIN public.tipo_pieza tp ON mtp."fk_TPieza" = tp.tp_cod;
END;
$BODY$;

ALTER FUNCTION public.get_reporte18()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_reporte20()

-- DROP FUNCTION IF EXISTS public.get_reporte20();

CREATE OR REPLACE FUNCTION public.get_reporte20(
	)
    RETURNS TABLE(nombreempleado character varying, apellidoempleado character varying, dia text, horaentrada time without time zone, horasalida time without time zone) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
	SELECT p."Per_nombre", p."Per_Per_apellido", h.hora_dia, h.hora_entrada, h.hora_salida
	  FROM public."Personal" p
	  JOIN public.asignacion a ON p."Per_cod" = a.fk_personal
	  JOIN public.horario h ON a.fk_horario = h.hora_cod;
END;
$BODY$;

ALTER FUNCTION public.get_reporte20()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_reporte21()

-- DROP FUNCTION IF EXISTS public.get_reporte21();

CREATE OR REPLACE FUNCTION public.get_reporte21(
	)
    RETURNS TABLE(nombreempleado character varying, apellidoempleado character varying, idconstruccion integer, idpieza integer, nombrepruebapieza character varying, idmaterial integer, nombrepruebamaterial character varying, idavion integer, nombrepruebaavion character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
	SELECT p."Per_nombre", p."Per_Per_apellido", cp.fk_construccion, pp."fk_TPiezaPru1",  (SELECT * FROM dame_tipo_prueba(pp."fk_TPiezaPru2")), pp."fk_TMaterialPru1", (SELECT * FROM dame_tipo_prueba(pp."fk_TMaterialPru2")), pp."fk_TAvionPru1", (SELECT * FROM dame_tipo_prueba(pp."fk_TAvionPru2"))
	  FROM public."Personal" p
	  JOIN public.cons_per cp ON p."Per_cod" = cp.fk_personal
	  JOIN public.per_pru pp ON p."Per_cod" = pp.fk_personal;
END;
$BODY$;

ALTER FUNCTION public.get_reporte21()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_tasa_de_cambio()

-- DROP FUNCTION IF EXISTS public.get_tasa_de_cambio();

CREATE OR REPLACE FUNCTION public.get_tasa_de_cambio(
	)
    RETURNS TABLE(tdc_cod integer, tdc_mon_origen character varying, tdc_mon_destino character varying, tdc_valor numeric) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT tdc.tdc_cod, tdc.tdc_mon_origen, tdc.tdc_mon_destino, tdc.tdc_valor
    FROM tasa_cambio tdc;
END;
$BODY$;

ALTER FUNCTION public.get_tasa_de_cambio()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_tipo_material()

-- DROP FUNCTION IF EXISTS public.get_tipo_material();

CREATE OR REPLACE FUNCTION public.get_tipo_material(
	)
    RETURNS TABLE(tipo_mat_cod integer, tipo_mat_nombre character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT tm.tipo_mat_cod, tm.tipo_mat_nombre
    FROM tipo_material tm	
	order by 1;
END;
$BODY$;

ALTER FUNCTION public.get_tipo_material()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_tipos_de_pruebas()

-- DROP FUNCTION IF EXISTS public.get_tipos_de_pruebas();

CREATE OR REPLACE FUNCTION public.get_tipos_de_pruebas(
	)
    RETURNS TABLE(tprueba_cod integer, tprueba_nombre character varying, tprueba_descripcion text, tprueba_duracion_estim numeric) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT tp.tprueba_cod, tp.tprueba_nombre, tp.tprueba_descripcion,
			tp.tprueba_duracion_estim
    FROM tipo_prueba tp	
	order by 1;
END;
$BODY$;

ALTER FUNCTION public.get_tipos_de_pruebas()
    OWNER TO grupo_rsm;

-- FUNCTION: public.get_usuarios_personas()

-- DROP FUNCTION IF EXISTS public.get_usuarios_personas();

CREATE OR REPLACE FUNCTION public.get_usuarios_personas(
	)
    RETURNS TABLE(per_cod integer, per_nombre character varying, user_nombre character varying, tipo_persona text) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
 
BEGIN
	return query
	select distinct tp."Per_cod", tp."Per_nombre", u.user_nombre,
		tp.tipo as tipo_persona
	from todas_las_personas tp, usuario u, proveedor p
	where tp."Per_cod" = u.fk_personal or
	tp."Per_cod" = u.fk_natural or
	tp."Per_cod" = u.fk_juridica
	order by 1;
END;

$BODY$;

ALTER FUNCTION public.get_usuarios_personas()
    OWNER TO grupo_rsm;

-- FUNCTION: public.inventario_detallado_por_mes()

-- DROP FUNCTION IF EXISTS public.inventario_detallado_por_mes();

CREATE OR REPLACE FUNCTION public.inventario_detallado_por_mes(
	)
    RETURNS TABLE(sede_inventario character varying, mes_inventario timestamp without time zone, material_nombre character varying, material_cantidad_inventario integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        s.sed_nombre, mat.mat_fecha_in, tmat.tipo_mat_nombre, mat.mat_cantidad
    FROM material mat
        JOIN tipo_material tmat ON mat."fk_TMaterial" = tmat.tipo_mat_cod
        JOIN sede s ON mat.fk_sede = s.sed_cod
    WHERE
        mat.mat_fecha_in IS NOT NULL AND mat.mat_fecha_out IS NULL
    GROUP BY
        s.sed_nombre, mat.mat_fecha_in, tmat.tipo_mat_nombre, mat.mat_cantidad
    ORDER BY
        1, 2 ASC
    ;
END;
$BODY$;

ALTER FUNCTION public.inventario_detallado_por_mes()
    OWNER TO grupo_rsm;


-- FUNCTION: public.mejores_10_clientes()

-- DROP FUNCTION IF EXISTS public.mejores_10_clientes();

CREATE OR REPLACE FUNCTION public.mejores_10_clientes(
	)
    RETURNS TABLE(anio integer, codigo integer, cliente character varying, cantidad bigint) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT
		EXTRACT(YEAR FROM v.ven_fecha)::INTEGER,
        c.cli_cod,
        tlp."Per_nombre",
        COUNT(v.ven_cod) AS cantidad_compras
    FROM venta v
    JOIN pedido p ON p.pedi_cod = v.fk_pedido
    JOIN cliente c ON c.cli_cod = p.fk_cliente
    JOIN todas_las_personas tlp ON c.fk_natural = tlp."Per_cod" OR c.fk_juridica = tlp."Per_cod"
	GROUP BY c.cli_cod, tlp."Per_nombre", EXTRACT(YEAR FROM v.ven_fecha)
    ORDER BY cantidad_compras DESC LIMIT 10;
END;
$BODY$;

ALTER FUNCTION public.mejores_10_clientes()
    OWNER TO grupo_rsm;

-- FUNCTION: public.post_modelo(text, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, numeric, text)

-- DROP FUNCTION IF EXISTS public.post_modelo(text, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, numeric, text);

CREATE OR REPLACE FUNCTION public.post_modelo(
	nombre text,
	cap_tripulacion integer,
	cap_pasajero integer,
	longitud integer,
	envergadura integer,
	altura integer,
	flecha_alar integer,
	peso_vacio integer,
	peso_max_despegue integer,
	peso_max_aterrizaje integer,
	velocidad_crucero integer,
	velocidad_max integer,
	capacidad_max_combustible integer,
	motor integer,
	precio numeric,
	descripcion text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
 
DECLARE
  v_mod_cod INTEGER;
  v_carac_cod INTEGER;
  v_carac_nombre TEXT;
  v_mod_carac_cantidad TEXT;
  caracValues TEXT[] := ARRAY[
    'Capacidad de tripulacion', 'Capacidad de pasajeros', 'Longitud', 'Envergadura', 'Altura', 'Flecha alar', 'Peso vacio', 'Peso maximo de despegue', 'Peso maximo de aterrizaje', 'Velocidad crucero', 'Velocidad maxima','Capacidad maxima de combustible', 'Motores'
  ];
  caracValuesData TEXT[] := ARRAY[
    Cap_tripulacion::TEXT, Cap_pasajero::TEXT, Longitud::TEXT, Envergadura::TEXT, Altura::TEXT, Flecha_alar::TEXT, Peso_vacio::TEXT, Peso_max_despegue::TEXT, Peso_max_aterrizaje::TEXT, Velocidad_crucero::TEXT, Velocidad_max::TEXT, Capacidad_max_combustible::TEXT, Motor::TEXT
  ];
BEGIN
	v_mod_cod := nextval('mod_cod_seq');
  INSERT INTO public."modelo" (mod_cod, mod_nombre, mod_descripcion, mod_costo)
  VALUES (v_mod_cod, Nombre, descripcion, precio);

  FOR i IN 1..array_length(caracValues, 1) LOOP
    v_carac_nombre := caracValues[i];
    v_mod_carac_cantidad := caracValuesData[i];

    RAISE NOTICE 'nombre: %', v_carac_nombre;
	
    SELECT carac_cod INTO v_carac_cod
    FROM public."caracteristica"
    WHERE carac_nombre = v_carac_nombre;

	RAISE NOTICE 'codigo: %', v_carac_cod;

    INSERT INTO public."mod_carac" (fk_modelo, fk_carac, mod_carac_cantidad)
    VALUES (v_mod_cod, v_carac_cod, v_mod_carac_cantidad::INTEGER);
  END LOOP;
END;
$BODY$;

ALTER FUNCTION public.post_modelo(text, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, numeric, text)
    OWNER TO grupo_rsm;

-- FUNCTION: public.promedio_produccion_sede()

-- DROP FUNCTION IF EXISTS public.promedio_produccion_sede();

CREATE OR REPLACE FUNCTION public.promedio_produccion_sede(
	)
    RETURNS TABLE(sede_nombre character varying, mes_produccion text, promedio_produccion bigint) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        s.sed_nombre,
        TO_CHAR(ps.pie_sede_fecha_ini, 'YYYY-MM') AS mes_inicio,
        COUNT(ps.pie_sed_cod) / COUNT(DISTINCT TO_CHAR(ps.pie_sede_fecha_ini, 'YYYY-MM')) AS promedio_produccion
    FROM 
        pieza_sede ps 
    JOIN
        sede s ON ps.fk_sede = s.sed_cod
    JOIN 
        pieza p ON ps.fk_pieza = p.pie_cod
    JOIN
        tipo_pieza tp ON p.fk_tpieza = tp.tp_cod
    WHERE
        ps.pie_sede_fecha_fin IS NOT NULL
        AND TO_CHAR(ps.pie_sede_fecha_ini, 'YYYY-MM') = TO_CHAR(ps.pie_sede_fecha_fin, 'YYYY-MM')
    GROUP BY
        s.sed_nombre, TO_CHAR(ps.pie_sede_fecha_ini, 'YYYY-MM')
    ORDER BY
        s.sed_nombre, mes_inicio ASC
    ;
END;
$BODY$;

ALTER FUNCTION public.promedio_produccion_sede()
    OWNER TO grupo_rsm;


-- FUNCTION: public.put_UserRol(character varying, integer)

-- DROP FUNCTION IF EXISTS public."put_UserRol"(character varying, integer);

CREATE OR REPLACE FUNCTION public."put_UserRol"(
	usernombre character varying,
	rol_cod integer)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

	--Actualizamos fk usuario con el rol nuevo
    UPDATE public.usuario
	SET fk_rol = rol_cod
	WHERE user_nombre = usernombre;

END;
$BODY$;

ALTER FUNCTION public."put_UserRol"(character varying, integer)
    OWNER TO grupo_rsm;

-- FUNCTION: public.put_modelo(text, text, integer, numeric, text)

-- DROP FUNCTION IF EXISTS public.put_modelo(text, text, integer, numeric, text);

CREATE OR REPLACE FUNCTION public.put_modelo(
	p_modelo text,
	p_nombre text,
	p_valor integer,
	p_costo numeric,
	p_descripcion text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
 
BEGIN
  UPDATE public."mod_carac" mc
  SET mod_carac_cantidad = p_valor
  FROM public."modelo" m, public."caracteristica" c
  WHERE m.mod_cod = mc.fk_modelo
  AND c.carac_cod = mc.fk_carac
  AND m.mod_nombre = p_modelo
  AND c.carac_nombre = p_nombre;

  UPDATE public."modelo" m
  SET m.mod_costo = p_costo, m.mod_descripcion = p_descripcion
  FROM public."modelo" m, public."caracteristica" c
  WHERE m.mod_cod = mc.fk_modelo
  AND c.carac_cod = mc.fk_carac
  AND m.mod_nombre = p_modelo
  AND c.carac_nombre = p_nombre;

  IF NOT FOUND THEN
    RAISE EXCEPTION 'Modelo o caracteristica no encontrada';
  END IF;
END;
$BODY$;

ALTER FUNCTION public.put_modelo(text, text, integer, numeric, text)
    OWNER TO grupo_rsm;

-- FUNCTION: public.registrar_persona(integer, character varying, date, integer, integer, character varying, character varying, character varying, character varying, character varying, character varying)

-- DROP FUNCTION IF EXISTS public.registrar_persona(integer, character varying, date, integer, integer, character varying, character varying, character varying, character varying, character varying, character varying);

CREATE OR REPLACE FUNCTION public.registrar_persona(
	tipo integer,
	per_nombre character varying,
	per_fecha_ini date,
	per_ci integer,
	fk_lugar integer,
	per_dir character varying,
	user_nombre character varying,
	user_seguro character varying,
	per_nat_apellido character varying,
	per_nat_estado_civil character varying,
	per_jur_razon_social character varying)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
    nuevo_per_cod INT;
	nuevo_rol INT;
BEGIN
    nuevo_per_cod := nextval('Per_cod_seq');
	nuevo_rol := 3;
	IF tipo = 1 THEN --Natural
	    INSERT INTO public."Natural" ("Per_cod", "Per_nombre", "Per_fecha_ini", "Per_ci", "fk_lugar", "Per_dir","Per_Nat_apellido", "Per_Nat_estado_civil")
	    VALUES (nuevo_per_cod, Per_nombre, Per_fecha_ini, Per_ci, fk_lugar, Per_dir, Per_Nat_apellido, Per_Nat_estado_civil);

		INSERT INTO public."usuario" ("user_cod", "user_nombre", "user_seguro", "fk_natural", "fk_rol")
	    VALUES (nextval('user_cod_seq'), user_nombre, user_seguro, nuevo_per_cod, nuevo_rol);
	ELSEIF tipo = 2 THEN -- Juridica
		INSERT INTO public."Juridica" ("Per_cod", "Per_nombre", "Per_fecha_ini", "Per_ci", "fk_lugar", "Per_dir","Per_Jur_razon_social")
	    VALUES (nuevo_per_cod, Per_nombre, Per_fecha_ini, Per_ci, fk_lugar, Per_dir, Per_Jur_razon_social);

		INSERT INTO public."usuario" ("user_cod", "user_nombre", "user_seguro", "fk_juridica", "fk_rol")
	    VALUES (nextval('user_cod_seq'), user_nombre, user_seguro, nuevo_per_cod, nuevo_rol);
	END IF;

    
END;
$BODY$;

ALTER FUNCTION public.registrar_persona(integer, character varying, date, integer, integer, character varying, character varying, character varying, character varying, character varying, character varying)
    OWNER TO grupo_rsm;

-- FUNCTION: public.solicitar_material(integer, numeric, integer, integer)

-- DROP FUNCTION IF EXISTS public.solicitar_material(integer, numeric, integer, integer);

CREATE OR REPLACE FUNCTION public.solicitar_material(
	tpmaterialcod integer,
	cantidadpedida numeric,
	sedepidiendocod integer,
	sedeabuscarcod integer)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
	materialATrasladar INTEGER;
	fechaIN timestamp without time zone;
	materialNewCod INTEGER;
BEGIN

	IF (SELECT mat_cantidad FROM public."material" WHERE "fk_TMaterial" = TPmaterialCOD AND fk_sede = sedeABuscarCOD AND mat_fecha_in IS NOT NULL AND mat_fecha_out IS NULL) > cantidadPedida THEN -- Hay suficiente material en la sede a buscar
		
		UPDATE public."material" --Se actualiza el inventario de esa sede
		SET mat_cantidad = mat_cantidad - cantidadPedida
		WHERE "fk_TMaterial" = TPmaterialCOD 
				AND fk_sede = sedeABuscarCOD
				AND mat_fecha_in IS NOT NULL 
				AND mat_fecha_out IS NULL;		

		fechaIN := (SELECT mat_fecha_in FROM public."material" WHERE "fk_TMaterial" = TPmaterialCOD AND fk_sede = sedeABuscarCOD AND mat_fecha_in IS NOT NULL AND mat_fecha_out IS NULL);
		INSERT INTO public."material" ("fk_TMaterial", mat_cantidad, mat_fecha_in, mat_fecha_out, fk_sede) -- Se genera un registro de la cantidad que salio en la sede a buscar
		VALUES (TPmaterialCOD, cantidadPedida, fechaIN, CURRENT_DATE, sedeABuscarCOD);

		materialNewCod := nextval('material_mat_cod_seq');
		INSERT INTO public."material" (mat_cod, "fk_TMaterial", mat_cantidad, fk_sede) -- Se genera un registro de la cantidad que entro en la sede necesitada
		VALUES (materialNewCod, TPmaterialCOD, cantidadPedida, sedePidiendoCOD);
	
		INSERT INTO public."est_mat" (estmat_fecha_ini, fk_estatus, fk_mat) -- Se coloca en traslado el material solicitado
		VALUES (CURRENT_DATE, 4, materialNewCod);

		INSERT INTO public."solicitud_sede" (solsed_tipo, fk_sede, fk_material) -- Se genera una solicitud de ese material
		VALUES ('Solicitud de material', sedeABuscarCOD, materialNewCod);
		
	ELSE -- No hay suficiente material en la sede a buscar
		PERFORM compra_materiales_proveedor
		(
			TPmaterialCOD,
			cantidadPedida,
			NULL
		);
	END IF; -- FIN if de material suficiente en esa sede

END;
$BODY$;

ALTER FUNCTION public.solicitar_material(integer, numeric, integer, integer)
    OWNER TO grupo_rsm;

-- FUNCTION: public.ubicacion_estatus_piezas()

-- DROP FUNCTION IF EXISTS public.ubicacion_estatus_piezas();

CREATE OR REPLACE FUNCTION public.ubicacion_estatus_piezas(
	)
    RETURNS TABLE(pieza_nombre character varying, pieza_estado character varying, pieza_ubicacion character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        tp.tp_nombre, e.estat_nombre, s.sed_nombre
    FROM pieza_sede ps 
        JOIN
            sede s ON ps.fk_sede = s.sed_cod
        JOIN 
            pieza p ON ps.fk_pieza = p.pie_cod
        JOIN
            est_pie ep ON p.pie_cod = ep.fk_pie
        JOIN
            estatus e ON ep.fk_estatus = e.estat_cod
        JOIN
            tipo_pieza tp ON p.fk_tpieza = tp.tp_cod
    ;
END;
$BODY$;

ALTER FUNCTION public.ubicacion_estatus_piezas()
    OWNER TO grupo_rsm;


-- FUNCTION: public.validar_usuario(text, text)

-- DROP FUNCTION IF EXISTS public.validar_usuario(text, text);

CREATE OR REPLACE FUNCTION public.validar_usuario(
	p_user_nombre text,
	p_user_seguro text)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
    v_count INTEGER;
BEGIN
    -- Contar cuántas filas coinciden con el usuario y la clave proporcionados
    SELECT COUNT(*)
    INTO v_count
    FROM public."usuario"
    WHERE "user_nombre" = p_user_nombre AND "user_seguro" = p_user_seguro;

    -- Si hay al menos una coincidencia, las credenciales son correctas
    IF v_count > 0 THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
$BODY$;

ALTER FUNCTION public.validar_usuario(text, text)
    OWNER TO grupo_rsm;

--TRIGGERS

-- FUNCTION: public.calcular_tiempo_estimado()

-- DROP FUNCTION IF EXISTS public.calcular_tiempo_estimado();

CREATE OR REPLACE FUNCTION public.calcular_tiempo_estimado()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
    total_duracion NUMERIC := 0; -- Variable para almacenar la suma de duraciones
BEGIN
    -- Sumar las duraciones estimadas de tipo_prueba asociadas a fk_avion
    SELECT SUM(tp.tprueba_duracion_estim)
    INTO total_duracion
    FROM avi_pru ap
    JOIN prueba p ON ap.fk_pru = p.pru_cod
    JOIN tipo_prueba tp ON p."fk_tipoPrueba" = tp.tprueba_cod
    WHERE ap.fk_avion = NEW.fk_avion;

    -- Asignar el total calculado a cons_tiempo_estimmado
    NEW.cons_tiempo_estimado := total_duracion;

    RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.calcular_tiempo_estimado()
    OWNER TO grupo_rsm;

-- FUNCTION: public.verificar_stock()

-- DROP FUNCTION IF EXISTS public.verificar_stock();

CREATE OR REPLACE FUNCTION public.verificar_stock()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
    v_tipo_material_cod INTEGER;
BEGIN
  IF (NEW.mat_cantidad < 200 AND NEW.mat_fecha_in IS NOT NULL AND NEW.mat_fecha_out IS NULL) THEN
    SELECT tipo_mat_cod INTO v_tipo_material_cod
    FROM tipo_material
    WHERE tipo_mat_cod = NEW."fk_TMaterial";

    PERFORM compra_materiales_proveedor(v_tipo_material_cod, 200);
  END IF;
  RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.verificar_stock()
    OWNER TO grupo_rsm;

--TABLAS

-- Table: public.caracteristica

-- DROP TABLE IF EXISTS public.caracteristica;

CREATE TABLE IF NOT EXISTS public.caracteristica
(
    carac_cod integer NOT NULL DEFAULT nextval('caracteristica_carac_cod_seq'::regclass),
    carac_nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    carac_descripcion text COLLATE pg_catalog."default",
    carac_unidad_medida character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT caracteristica_pkey PRIMARY KEY (carac_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.caracteristica
    OWNER to grupo_rsm;

-- Table: public.cargo

-- DROP TABLE IF EXISTS public.cargo;

CREATE TABLE IF NOT EXISTS public.cargo
(
    car_cod integer NOT NULL,
    car_nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    car_sueldo_hora_extra numeric(10,2) NOT NULL,
    CONSTRAINT cargo_pkey PRIMARY KEY (car_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cargo
    OWNER to grupo_rsm;

-- Table: public.estatus

-- DROP TABLE IF EXISTS public.estatus;

CREATE TABLE IF NOT EXISTS public.estatus
(
    estat_cod integer NOT NULL DEFAULT nextval('estatus_estat_cod_seq'::regclass),
    estat_nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    estat_tipo character varying(50) COLLATE pg_catalog."default",
    estat_descripcion character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT estatus_pkey PRIMARY KEY (estat_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.estatus
    OWNER to grupo_rsm;

-- Table: public.horario

-- DROP TABLE IF EXISTS public.horario;

CREATE TABLE IF NOT EXISTS public.horario
(
    hora_cod integer NOT NULL DEFAULT nextval('horario_seq'::regclass),
    hora_entrada time without time zone NOT NULL,
    hora_salida time without time zone NOT NULL,
    hora_dia text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT horario_pkey PRIMARY KEY (hora_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.horario
    OWNER to grupo_rsm;

-- Table: public.lugar

-- DROP TABLE IF EXISTS public.lugar;

CREATE TABLE IF NOT EXISTS public.lugar
(
    lu_nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    lu_tipo character varying(20) COLLATE pg_catalog."default" NOT NULL,
    fk_lugar integer,
    lu_cod integer NOT NULL DEFAULT nextval('lugar_lu_cod_seq'::regclass),
    CONSTRAINT lugar_pkey PRIMARY KEY (lu_cod),
    CONSTRAINT lugar_fk_lugar_fkey FOREIGN KEY (fk_lugar)
        REFERENCES public.lugar (lu_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.lugar
    OWNER to grupo_rsm;

-- Table: public.sede

-- DROP TABLE IF EXISTS public.sede;

CREATE TABLE IF NOT EXISTS public.sede
(
    sed_cod integer NOT NULL DEFAULT nextval('sede_sed_cod_seq'::regclass),
    sed_nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    fk_lugar integer,
    CONSTRAINT sede_pkey PRIMARY KEY (sed_cod),
    CONSTRAINT sede_fk_lugar_fkey FOREIGN KEY (fk_lugar)
        REFERENCES public.lugar (lu_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sede
    OWNER to grupo_rsm;

-- Table: public.zona

-- DROP TABLE IF EXISTS public.zona;

CREATE TABLE IF NOT EXISTS public.zona
(
    zon_cod integer NOT NULL DEFAULT nextval('zona_zon_cod_seq'::regclass),
    zon_nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    fk_sede integer,
    CONSTRAINT zona_pkey PRIMARY KEY (zon_cod),
    CONSTRAINT zona_fk_sede_fkey FOREIGN KEY (fk_sede)
        REFERENCES public.sede (sed_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.zona
    OWNER to grupo_rsm;

-- Table: public.area

-- DROP TABLE IF EXISTS public.area;

CREATE TABLE IF NOT EXISTS public.area
(
    ar_cod integer NOT NULL DEFAULT nextval('area_seq'::regclass),
    ar_nombre character varying(30) COLLATE pg_catalog."default" NOT NULL,
    fk_zona integer,
    CONSTRAINT area_pkey PRIMARY KEY (ar_cod),
    CONSTRAINT area_fk_zona_fkey FOREIGN KEY (fk_zona)
        REFERENCES public.zona (zon_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.area
    OWNER to grupo_rsm;

-- Table: public.modelo

-- DROP TABLE IF EXISTS public.modelo;

CREATE TABLE IF NOT EXISTS public.modelo
(
    mod_cod integer NOT NULL DEFAULT nextval('modelo_seq'::regclass),
    mod_nombre character varying(30) COLLATE pg_catalog."default" NOT NULL,
    mod_descripcion text COLLATE pg_catalog."default",
    mod_costo numeric,
    CONSTRAINT modelo_pkey PRIMARY KEY (mod_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.modelo
    OWNER to grupo_rsm;

-- Table: public.Persona

-- DROP TABLE IF EXISTS public."Persona";

CREATE TABLE IF NOT EXISTS public."Persona"
(
    "Per_cod" integer NOT NULL DEFAULT nextval('persona_seq'::regclass),
    "Per_nombre" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "Per_fecha_ini" timestamp without time zone NOT NULL,
    "Per_ci" integer NOT NULL,
    fk_lugar integer,
    "Per_dir" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Persona_pkey" PRIMARY KEY ("Per_cod"),
    CONSTRAINT "Persona_fk_lugar_fkey" FOREIGN KEY (fk_lugar)
        REFERENCES public.lugar (lu_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Persona"
    OWNER to grupo_rsm;

-- Table: public.Natural

-- DROP TABLE IF EXISTS public."Natural";

CREATE TABLE IF NOT EXISTS public."Natural"
(
    -- Inherited from table public."Persona": "Per_cod" integer NOT NULL DEFAULT nextval('persona_seq'::regclass),
    -- Inherited from table public."Persona": "Per_nombre" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public."Persona": "Per_fecha_ini" timestamp without time zone NOT NULL,
    -- Inherited from table public."Persona": "Per_ci" integer NOT NULL,
    -- Inherited from table public."Persona": fk_lugar integer,
    -- Inherited from table public."Persona": "Per_dir" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "Per_Nat_apellido" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "Per_Nat_estado_civil" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Natural_pkey" PRIMARY KEY ("Per_cod")
)
    INHERITS (public."Persona")

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Natural"
    OWNER to grupo_rsm;

-- Table: public.Juridica

-- DROP TABLE IF EXISTS public."Juridica";

CREATE TABLE IF NOT EXISTS public."Juridica"
(
    -- Inherited from table public."Persona": "Per_cod" integer NOT NULL DEFAULT nextval('persona_seq'::regclass),
    -- Inherited from table public."Persona": "Per_nombre" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public."Persona": "Per_fecha_ini" timestamp without time zone NOT NULL,
    -- Inherited from table public."Persona": "Per_ci" integer NOT NULL,
    -- Inherited from table public."Persona": fk_lugar integer,
    -- Inherited from table public."Persona": "Per_dir" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "Per_Jur_razon_social" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Juridica_pkey" PRIMARY KEY ("Per_cod")
)
    INHERITS (public."Persona")

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Juridica"
    OWNER to grupo_rsm;

-- Table: public.Personal

-- DROP TABLE IF EXISTS public."Personal";

CREATE TABLE IF NOT EXISTS public."Personal"
(
    -- Inherited from table public."Persona": "Per_cod" integer NOT NULL DEFAULT nextval('persona_seq'::regclass),
    -- Inherited from table public."Persona": "Per_nombre" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public."Persona": "Per_fecha_ini" timestamp without time zone NOT NULL,
    -- Inherited from table public."Persona": "Per_ci" integer NOT NULL,
    -- Inherited from table public."Persona": fk_lugar integer,
    -- Inherited from table public."Persona": "Per_dir" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "Per_Per_apellido" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "Per_Per_experiencia" integer NOT NULL,
    fk_area integer,
    CONSTRAINT "Personal_pkey" PRIMARY KEY ("Per_cod"),
    CONSTRAINT "Personal_fk_area_fkey" FOREIGN KEY (fk_area)
        REFERENCES public.area (ar_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
    INHERITS (public."Persona")

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Personal"
    OWNER to grupo_rsm;

-- Table: public.privilegio

-- DROP TABLE IF EXISTS public.privilegio;

CREATE TABLE IF NOT EXISTS public.privilegio
(
    priv_cod integer NOT NULL DEFAULT nextval('privilegio_priv_cod_seq'::regclass),
    priv_nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT privilegio_pkey PRIMARY KEY (priv_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.privilegio
    OWNER to grupo_rsm;

-- Table: public.proveedor

-- DROP TABLE IF EXISTS public.proveedor;

CREATE TABLE IF NOT EXISTS public.proveedor
(
    prove_cod integer NOT NULL DEFAULT nextval('proveedor_prove_cod_seq'::regclass),
    prove_nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    prove_ci integer NOT NULL,
    fk_lugar integer,
    CONSTRAINT proveedor_pkey PRIMARY KEY (prove_cod),
    CONSTRAINT proveedor_prove_ci_key UNIQUE (prove_ci),
    CONSTRAINT proveedor_fk_lugar_fkey FOREIGN KEY (fk_lugar)
        REFERENCES public.lugar (lu_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.proveedor
    OWNER to grupo_rsm;

-- Table: public.red_social

-- DROP TABLE IF EXISTS public.red_social;

CREATE TABLE IF NOT EXISTS public.red_social
(
    rs_usuario character varying(20) COLLATE pg_catalog."default" NOT NULL,
    rs_nombre character varying(20) COLLATE pg_catalog."default" NOT NULL,
    fk_personal integer,
    CONSTRAINT red_social_pkey PRIMARY KEY (rs_usuario),
    CONSTRAINT red_social_fk_personal_fkey FOREIGN KEY (fk_personal)
        REFERENCES public."Personal" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.red_social
    OWNER to grupo_rsm;

-- Table: public.rol

-- DROP TABLE IF EXISTS public.rol;

CREATE TABLE IF NOT EXISTS public.rol
(
    rol_cod integer NOT NULL DEFAULT nextval('rol_rol_cod_seq'::regclass),
    rol_nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT rol_pkey PRIMARY KEY (rol_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.rol
    OWNER to grupo_rsm;

-- Table: public.rol_priv

-- DROP TABLE IF EXISTS public.rol_priv;

CREATE TABLE IF NOT EXISTS public.rol_priv
(
    fk_rol integer NOT NULL,
    fk_priv integer NOT NULL,
    CONSTRAINT rol_priv_pkey PRIMARY KEY (fk_rol, fk_priv),
    CONSTRAINT rol_priv_fk_priv_fkey FOREIGN KEY (fk_priv)
        REFERENCES public.privilegio (priv_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT rol_priv_fk_rol_fkey FOREIGN KEY (fk_rol)
        REFERENCES public.rol (rol_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.rol_priv
    OWNER to grupo_rsm;

-- Table: public.tasa_cambio

-- DROP TABLE IF EXISTS public.tasa_cambio;

CREATE TABLE IF NOT EXISTS public.tasa_cambio
(
    tdc_cod integer NOT NULL DEFAULT nextval('tasa_cambio_tdc_cod_seq'::regclass),
    tdc_mon_origen character varying(100) COLLATE pg_catalog."default" NOT NULL,
    tdc_mon_destino character varying(100) COLLATE pg_catalog."default" NOT NULL,
    tdc_valor numeric(10,4) NOT NULL,
    tdc_fecha_vigencia timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    tdc_fecha_vencimiento timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT tasa_cambio_pkey PRIMARY KEY (tdc_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tasa_cambio
    OWNER to grupo_rsm;

-- Table: public.telefono

-- DROP TABLE IF EXISTS public.telefono;

CREATE TABLE IF NOT EXISTS public.telefono
(
    tlf_cod numeric(10,2) NOT NULL DEFAULT nextval('tlf_seq'::regclass),
    tlf_cod_area numeric(10,2) NOT NULL,
    tlf_numero bigint NOT NULL,
    fk_persona integer,
    fk_proveedor integer,
    fk_natural integer,
    fk_juridica integer,
    fk_personal integer,
    CONSTRAINT telefono_pkey PRIMARY KEY (tlf_cod),
    CONSTRAINT telefono_fk_juridica_fkey FOREIGN KEY (fk_juridica)
        REFERENCES public."Juridica" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT telefono_fk_natural_fkey FOREIGN KEY (fk_natural)
        REFERENCES public."Natural" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT telefono_fk_persona_fkey FOREIGN KEY (fk_persona)
        REFERENCES public."Persona" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT telefono_fk_personal_fkey FOREIGN KEY (fk_personal)
        REFERENCES public."Personal" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT telefono_fk_proveedor_fkey FOREIGN KEY (fk_proveedor)
        REFERENCES public.proveedor (prove_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.telefono
    OWNER to grupo_rsm;

-- Table: public.tipo_maquinaria

-- DROP TABLE IF EXISTS public.tipo_maquinaria;

CREATE TABLE IF NOT EXISTS public.tipo_maquinaria
(
    tipo_maq_cod integer NOT NULL DEFAULT nextval('tipo_maquinaria_seq'::regclass),
    tipo_maq_nombre character varying(30) COLLATE pg_catalog."default" NOT NULL,
    tipo_maq_tarea character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT tipo_maquinaria_pkey PRIMARY KEY (tipo_maq_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tipo_maquinaria
    OWNER to grupo_rsm;

-- Table: public.tipo_material

-- DROP TABLE IF EXISTS public.tipo_material;

CREATE TABLE IF NOT EXISTS public.tipo_material
(
    tipo_mat_cod integer NOT NULL DEFAULT nextval('tipo_material_tipo_mat_cod_seq'::regclass),
    tipo_mat_nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    tipo_mat_unidad_medida character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tipo_material_pkey PRIMARY KEY (tipo_mat_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tipo_material
    OWNER to grupo_rsm;

-- Table: public.tipo_pieza

-- DROP TABLE IF EXISTS public.tipo_pieza;

CREATE TABLE IF NOT EXISTS public.tipo_pieza
(
    tp_cod integer NOT NULL DEFAULT nextval('tipo_pieza_seq'::regclass),
    tp_nombre character varying(30) COLLATE pg_catalog."default" NOT NULL,
    tp_descripcion text COLLATE pg_catalog."default",
    CONSTRAINT tipo_pieza_pkey PRIMARY KEY (tp_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tipo_pieza
    OWNER to grupo_rsm;

-- Table: public.tipo_prueba

-- DROP TABLE IF EXISTS public.tipo_prueba;

CREATE TABLE IF NOT EXISTS public.tipo_prueba
(
    tprueba_cod integer NOT NULL DEFAULT nextval('tipo_prueba_tprueba_cod_seq'::regclass),
    tprueba_nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    tprueba_descripcion text COLLATE pg_catalog."default",
    tprueba_duracion_estim numeric NOT NULL,
    CONSTRAINT tipo_prueba_pkey PRIMARY KEY (tprueba_cod)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tipo_prueba
    OWNER to grupo_rsm;

-- Table: public.titulo

-- DROP TABLE IF EXISTS public.titulo;

CREATE TABLE IF NOT EXISTS public.titulo
(
    titu_cod integer NOT NULL DEFAULT nextval('titulo_seq'::regclass),
    titu_descripcion character varying(50) COLLATE pg_catalog."default" NOT NULL,
    titu_institucion character varying(30) COLLATE pg_catalog."default" NOT NULL,
    fk_personal integer,
    CONSTRAINT titulo_pkey PRIMARY KEY (titu_cod),
    CONSTRAINT titulo_fk_personal_fkey FOREIGN KEY (fk_personal)
        REFERENCES public."Personal" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.titulo
    OWNER to grupo_rsm;

-- Table: public.usuario

-- DROP TABLE IF EXISTS public.usuario;

CREATE TABLE IF NOT EXISTS public.usuario
(
    user_cod integer NOT NULL DEFAULT nextval('usuario_seq'::regclass),
    user_nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    user_seguro character varying(50) COLLATE pg_catalog."default" NOT NULL,
    fk_rol integer,
    fk_personal integer,
    fk_natural integer,
    fk_juridica integer,
    fk_proveedor integer,
    CONSTRAINT usuario_pkey PRIMARY KEY (user_cod),
    CONSTRAINT usuario_nombre_unique UNIQUE (user_nombre),
    CONSTRAINT usuario_fk_juridica_fkey FOREIGN KEY (fk_juridica)
        REFERENCES public."Juridica" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT usuario_fk_natural_fkey FOREIGN KEY (fk_natural)
        REFERENCES public."Natural" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT usuario_fk_personal_fkey FOREIGN KEY (fk_personal)
        REFERENCES public."Personal" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT usuario_fk_proveedor_fkey FOREIGN KEY (fk_proveedor)
        REFERENCES public.proveedor (prove_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT usuario_fk_rol_fkey FOREIGN KEY (fk_rol)
        REFERENCES public.rol (rol_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.usuario
    OWNER to grupo_rsm;

-- Table: public.asignacion

-- DROP TABLE IF EXISTS public.asignacion;

CREATE TABLE IF NOT EXISTS public.asignacion
(
    asig_cod integer NOT NULL DEFAULT nextval('asignacion_seq'::regclass),
    fk_horario integer,
    fk_personal integer,
    CONSTRAINT asignacion_pkey PRIMARY KEY (asig_cod),
    CONSTRAINT fk_horario FOREIGN KEY (fk_horario)
        REFERENCES public.horario (hora_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_personal FOREIGN KEY (fk_personal)
        REFERENCES public."Personal" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.asignacion
    OWNER to grupo_rsm;

-- Table: public.asistencia

-- DROP TABLE IF EXISTS public.asistencia;

CREATE TABLE IF NOT EXISTS public.asistencia
(
    asis_cod integer NOT NULL DEFAULT nextval('asistencia_seq'::regclass),
    asis_fecha_asistida date,
    asis_hora_entrada time without time zone,
    asis_hora_salida time without time zone,
    fk_asignacion integer,
    CONSTRAINT asistencia_pkey PRIMARY KEY (asis_cod),
    CONSTRAINT fk_asignacion FOREIGN KEY (fk_asignacion)
        REFERENCES public.asignacion (asig_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.asistencia
    OWNER to grupo_rsm;

-- Table: public.avion

-- DROP TABLE IF EXISTS public.avion;

CREATE TABLE IF NOT EXISTS public.avion
(
    avion_cod integer NOT NULL DEFAULT nextval('avion_seq'::regclass),
    avion_descripcion text COLLATE pg_catalog."default",
    avion_fecha_fabfinalizado date,
    fk_modelo integer NOT NULL,
    CONSTRAINT avion_pkey PRIMARY KEY (avion_cod),
    CONSTRAINT avion_fk_modelo_fkey FOREIGN KEY (fk_modelo)
        REFERENCES public.modelo (mod_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.avion
    OWNER to grupo_rsm;

-- Table: public.beneficiario

-- DROP TABLE IF EXISTS public.beneficiario;

CREATE TABLE IF NOT EXISTS public.beneficiario
(
    bene_cod integer NOT NULL DEFAULT nextval('beneficiario_seq'::regclass),
    bene_nombre character varying(20) COLLATE pg_catalog."default" NOT NULL,
    fk_personal integer,
    CONSTRAINT beneficiario_pkey PRIMARY KEY (bene_cod),
    CONSTRAINT beneficiario_fk_personal_fkey FOREIGN KEY (fk_personal)
        REFERENCES public."Personal" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.beneficiario
    OWNER to grupo_rsm;

-- Table: public.cliente

-- DROP TABLE IF EXISTS public.cliente;

CREATE TABLE IF NOT EXISTS public.cliente
(
    cli_cod integer NOT NULL DEFAULT nextval('cliente_seq'::regclass),
    cli_fecha_registro date NOT NULL,
    fk_natural integer,
    fk_juridica integer,
    CONSTRAINT cliente_pkey PRIMARY KEY (cli_cod),
    CONSTRAINT "Se convierte en" FOREIGN KEY (fk_natural)
        REFERENCES public."Natural" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Se torna un" FOREIGN KEY (fk_juridica)
        REFERENCES public."Juridica" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cliente
    OWNER to grupo_rsm;

-- Table: public.compra

-- DROP TABLE IF EXISTS public.compra;

CREATE TABLE IF NOT EXISTS public.compra
(
    compr_cod integer NOT NULL DEFAULT nextval('compra_compr_cod_seq'::regclass),
    compr_preciotot numeric(10,4) NOT NULL,
    fk_proveedor integer,
    CONSTRAINT compra_pkey PRIMARY KEY (compr_cod),
    CONSTRAINT compra_fk_proveedor_fkey FOREIGN KEY (fk_proveedor)
        REFERENCES public.proveedor (prove_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.compra
    OWNER to grupo_rsm;

-- Table: public.correo

-- DROP TABLE IF EXISTS public.correo;

CREATE TABLE IF NOT EXISTS public.correo
(
    cor_cod numeric(10,2) NOT NULL DEFAULT nextval('correo_seq'::regclass),
    cor_alias character varying(20) COLLATE pg_catalog."default" NOT NULL,
    cor_dominio character varying(20) COLLATE pg_catalog."default" NOT NULL,
    fk_persona integer,
    fk_proveedor integer,
    CONSTRAINT correo_pkey PRIMARY KEY (cor_cod),
    CONSTRAINT correo_fk_persona_fkey FOREIGN KEY (fk_persona)
        REFERENCES public."Persona" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT correo_fk_proveedor_fkey FOREIGN KEY (fk_proveedor)
        REFERENCES public.proveedor (prove_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.correo
    OWNER to grupo_rsm;

-- Table: public.est_avion

-- DROP TABLE IF EXISTS public.est_avion;

CREATE TABLE IF NOT EXISTS public.est_avion
(
    estav_fecha_ini timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estav_fecha_fin timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_estatus integer NOT NULL,
    fk_avion integer NOT NULL,
    CONSTRAINT est_avion_pkey PRIMARY KEY (fk_estatus, fk_avion),
    CONSTRAINT est_avion_fk_avion_fkey FOREIGN KEY (fk_avion)
        REFERENCES public.avion (avion_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT est_avion_fk_estatus_fkey FOREIGN KEY (fk_estatus)
        REFERENCES public.estatus (estat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.est_avion
    OWNER to grupo_rsm;

-- Table: public.material

-- DROP TABLE IF EXISTS public.material;

CREATE TABLE IF NOT EXISTS public.material
(
    mat_cod integer NOT NULL DEFAULT nextval('material_mat_cod_seq'::regclass),
    "fk_TMaterial" integer,
    mat_cantidad integer NOT NULL,
    mat_fecha_in timestamp without time zone,
    mat_fecha_out timestamp without time zone,
    fk_sede integer,
    CONSTRAINT material_pkey PRIMARY KEY (mat_cod),
    CONSTRAINT "material_fk_TMaterial_fkey" FOREIGN KEY ("fk_TMaterial")
        REFERENCES public.tipo_material (tipo_mat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT material_fk_sede_fkey FOREIGN KEY (fk_sede)
        REFERENCES public.sede (sed_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.material
    OWNER to grupo_rsm;

-- Trigger: verificar_stock_trigger

-- DROP TRIGGER IF EXISTS verificar_stock_trigger ON public.material;

CREATE TRIGGER verificar_stock_trigger
    AFTER UPDATE OF mat_cantidad
    ON public.material
    FOR EACH ROW
    EXECUTE FUNCTION public.verificar_stock();

-- Table: public.mod_carac

-- DROP TABLE IF EXISTS public.mod_carac;

CREATE TABLE IF NOT EXISTS public.mod_carac
(
    fk_modelo integer NOT NULL,
    fk_carac integer NOT NULL,
    mod_carac_cantidad numeric,
    CONSTRAINT mod_carac_pkey PRIMARY KEY (fk_modelo, fk_carac),
    CONSTRAINT mod_carac_fk_carac_fkey FOREIGN KEY (fk_carac)
        REFERENCES public.caracteristica (carac_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT mod_carac_fk_modelo_fkey FOREIGN KEY (fk_modelo)
        REFERENCES public.modelo (mod_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.mod_carac
    OWNER to grupo_rsm;

-- Table: public.Mod_Tpie

-- DROP TABLE IF EXISTS public."Mod_Tpie";

CREATE TABLE IF NOT EXISTS public."Mod_Tpie"
(
    fk_modelo integer NOT NULL,
    cantidad numeric,
    "fk_TPieza" integer NOT NULL,
    CONSTRAINT "Mod_Tpie_pkey" PRIMARY KEY (fk_modelo, "fk_TPieza"),
    CONSTRAINT "Mod_Tpie_fk_TPieza_fkey" FOREIGN KEY ("fk_TPieza")
        REFERENCES public.tipo_pieza (tp_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Mod_Tpie_fk_modelo_fkey" FOREIGN KEY (fk_modelo)
        REFERENCES public.modelo (mod_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Mod_Tpie"
    OWNER to grupo_rsm;

-- Table: public.metodo_pago

-- DROP TABLE IF EXISTS public.metodo_pago;

CREATE TABLE IF NOT EXISTS public.metodo_pago
(
    metpago_cod integer NOT NULL DEFAULT nextval('metodo_pago_metpago_cod_seq'::regclass),
    "fk_tasaCambio" integer,
    CONSTRAINT metodo_pago_pkey PRIMARY KEY (metpago_cod),
    CONSTRAINT "metodo_pago_fk_tasaCambio_fkey" FOREIGN KEY ("fk_tasaCambio")
        REFERENCES public.tasa_cambio (tdc_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.metodo_pago
    OWNER to grupo_rsm;

-- Table: public.pago_movil

-- DROP TABLE IF EXISTS public.pago_movil;

CREATE TABLE IF NOT EXISTS public.pago_movil
(
    -- Inherited from table public.metodo_pago: metpago_cod integer NOT NULL DEFAULT nextval('metodo_pago_metpago_cod_seq'::regclass),
    -- Inherited from table public.metodo_pago: "fk_tasaCambio" integer,
    pm_numero_cuenta integer NOT NULL,
    CONSTRAINT pago_movil_pkey PRIMARY KEY (metpago_cod),
    CONSTRAINT pago_movil_pm_numero_cuenta_key UNIQUE (pm_numero_cuenta)
)
    INHERITS (public.metodo_pago)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pago_movil
    OWNER to grupo_rsm;

-- Table: public.t_credito

-- DROP TABLE IF EXISTS public.t_credito;

CREATE TABLE IF NOT EXISTS public.t_credito
(
    -- Inherited from table public.metodo_pago: metpago_cod integer NOT NULL DEFAULT nextval('metodo_pago_metpago_cod_seq'::regclass),
    -- Inherited from table public.metodo_pago: "fk_tasaCambio" integer,
    tc_cvv integer NOT NULL,
    tc_fecha_vec timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    tc_banco character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT t_credito_pkey PRIMARY KEY (metpago_cod),
    CONSTRAINT t_credito_tc_cvv_key UNIQUE (tc_cvv)
)
    INHERITS (public.metodo_pago)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_credito
    OWNER to grupo_rsm;

-- Table: public.t_debito

-- DROP TABLE IF EXISTS public.t_debito;

CREATE TABLE IF NOT EXISTS public.t_debito
(
    -- Inherited from table public.metodo_pago: metpago_cod integer NOT NULL DEFAULT nextval('metodo_pago_metpago_cod_seq'::regclass),
    -- Inherited from table public.metodo_pago: "fk_tasaCambio" integer,
    td_numero integer NOT NULL,
    td_fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    td_banco character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT t_debito_pkey PRIMARY KEY (metpago_cod),
    CONSTRAINT t_debito_td_numero_key UNIQUE (td_numero)
)
    INHERITS (public.metodo_pago)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_debito
    OWNER to grupo_rsm;

-- Table: public.efectivo

-- DROP TABLE IF EXISTS public.efectivo;

CREATE TABLE IF NOT EXISTS public.efectivo
(
    -- Inherited from table public.metodo_pago: metpago_cod integer NOT NULL DEFAULT nextval('metodo_pago_metpago_cod_seq'::regclass),
    -- Inherited from table public.metodo_pago: "fk_tasaCambio" integer,
    efe_denominacion character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT efectivo_pkey PRIMARY KEY (metpago_cod),
    CONSTRAINT efectivo_efe_denominacion_key UNIQUE (efe_denominacion)
)
    INHERITS (public.metodo_pago)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.efectivo
    OWNER to grupo_rsm;

-- Table: public.transferencia

-- DROP TABLE IF EXISTS public.transferencia;

CREATE TABLE IF NOT EXISTS public.transferencia
(
    -- Inherited from table public.metodo_pago: metpago_cod integer NOT NULL DEFAULT nextval('metodo_pago_metpago_cod_seq'::regclass),
    -- Inherited from table public.metodo_pago: "fk_tasaCambio" integer,
    tr_fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    tr_banco character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT transferencia_pkey PRIMARY KEY (metpago_cod)
)
    INHERITS (public.metodo_pago)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.transferencia
    OWNER to grupo_rsm;

-- Table: public.cheque

-- DROP TABLE IF EXISTS public.cheque;

CREATE TABLE IF NOT EXISTS public.cheque
(
    -- Inherited from table public.metodo_pago: metpago_cod integer NOT NULL DEFAULT nextval('metodo_pago_metpago_cod_seq'::regclass),
    -- Inherited from table public.metodo_pago: "fk_tasaCambio" integer,
    che_numero integer NOT NULL,
    che_banco character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT cheque_pkey PRIMARY KEY (metpago_cod),
    CONSTRAINT cheque_che_numero_key UNIQUE (che_numero)
)
    INHERITS (public.metodo_pago)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cheque
    OWNER to grupo_rsm;

-- Table: public.pedido

-- DROP TABLE IF EXISTS public.pedido;

CREATE TABLE IF NOT EXISTS public.pedido
(
    pedi_cod integer NOT NULL DEFAULT nextval('pedido_pedi_cod_seq'::regclass),
    pedi_fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_avion integer,
    fk_cliente integer,
    CONSTRAINT pedido_pkey PRIMARY KEY (pedi_cod),
    CONSTRAINT pedido_fk_avion_fkey FOREIGN KEY (fk_avion)
        REFERENCES public.avion (avion_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT pedido_fk_cliente_fkey FOREIGN KEY (fk_cliente)
        REFERENCES public.cliente (cli_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pedido
    OWNER to grupo_rsm;

-- Table: public.venta

-- DROP TABLE IF EXISTS public.venta;

CREATE TABLE IF NOT EXISTS public.venta
(
    ven_cod integer NOT NULL DEFAULT nextval('venta_ven_cod_seq'::regclass),
    ven_monto numeric(15,2) NOT NULL,
    ven_cantidad numeric(16,0) NOT NULL,
    ven_fecha timestamp without time zone NOT NULL,
    fk_pedido integer,
    CONSTRAINT venta_pkey PRIMARY KEY (ven_cod),
    CONSTRAINT venta_fk_pedido_fkey FOREIGN KEY (fk_pedido)
        REFERENCES public.pedido (pedi_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.venta
    OWNER to grupo_rsm;

-- Table: public.pago

-- DROP TABLE IF EXISTS public.pago;

CREATE TABLE IF NOT EXISTS public.pago
(
    pago_cod integer NOT NULL DEFAULT nextval('pago_pago_cod_seq'::regclass),
    pago_hora_fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    pago_monto_final numeric(10,2) NOT NULL,
    "fk_MetPag" integer,
    fk_compra integer,
    fk_venta integer,
    fk_pago_movil integer,
    fk_cheque integer,
    fk_transferencia integer,
    fk_efectivo integer,
    fk_t_credito integer,
    fk_t_debito integer,
    CONSTRAINT pago_pkey PRIMARY KEY (pago_cod),
    CONSTRAINT "pago_fk_MetPag_fkey" FOREIGN KEY ("fk_MetPag")
        REFERENCES public.metodo_pago (metpago_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT pago_fk_cheque_fkey FOREIGN KEY (fk_cheque)
        REFERENCES public.cheque (metpago_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT pago_fk_compra_fkey FOREIGN KEY (fk_compra)
        REFERENCES public.compra (compr_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT pago_fk_efectivo_fkey FOREIGN KEY (fk_efectivo)
        REFERENCES public.efectivo (metpago_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT pago_fk_pago_movil_fkey FOREIGN KEY (fk_pago_movil)
        REFERENCES public.pago_movil (metpago_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT pago_fk_t_credito_fkey FOREIGN KEY (fk_t_credito)
        REFERENCES public.t_credito (metpago_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT pago_fk_t_debito_fkey FOREIGN KEY (fk_t_debito)
        REFERENCES public.t_debito (metpago_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT pago_fk_transferencia_fkey FOREIGN KEY (fk_transferencia)
        REFERENCES public.transferencia (metpago_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT pago_fk_venta_fkey FOREIGN KEY (fk_venta)
        REFERENCES public.venta (ven_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pago
    OWNER to grupo_rsm;

-- Table: public.per_car

-- DROP TABLE IF EXISTS public.per_car;

CREATE TABLE IF NOT EXISTS public.per_car
(
    fk_personal integer NOT NULL,
    fk_cargo integer NOT NULL,
    per_car_fecha_inicio date NOT NULL,
    per_car_fecha_fin date,
    per_car_sueldo_base numeric(10,2) NOT NULL,
    CONSTRAINT per_car_pkey PRIMARY KEY (fk_personal, fk_cargo),
    CONSTRAINT per_car_fk_cargo_fkey FOREIGN KEY (fk_cargo)
        REFERENCES public.cargo (car_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT per_car_fk_personal_fkey FOREIGN KEY (fk_personal)
        REFERENCES public."Personal" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.per_car
    OWNER to grupo_rsm;

-- Table: public.pieza

-- DROP TABLE IF EXISTS public.pieza;

CREATE TABLE IF NOT EXISTS public.pieza
(
    pie_cod integer NOT NULL DEFAULT nextval('pieza_seq'::regclass),
    pie_descripcion text COLLATE pg_catalog."default",
    pie_fecha_in date NOT NULL,
    fk_tpieza integer NOT NULL,
    pie_cantidad numeric NOT NULL DEFAULT 1,
    pie_fecha_out date,
    CONSTRAINT pieza_pkey PRIMARY KEY (pie_cod),
    CONSTRAINT pieza_fk_tpieza_fkey FOREIGN KEY (fk_tpieza)
        REFERENCES public.tipo_pieza (tp_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pieza
    OWNER to grupo_rsm;

-- Table: public.pieza_sede

-- DROP TABLE IF EXISTS public.pieza_sede;

CREATE TABLE IF NOT EXISTS public.pieza_sede
(
    pie_sed_cod integer NOT NULL DEFAULT nextval('pieza_sede_seq'::regclass),
    pie_sede_fecha_ini date,
    pie_sede_fecha_fin date,
    fk_pieza integer,
    fk_sede integer,
    CONSTRAINT pieza_sede_pkey PRIMARY KEY (pie_sed_cod),
    CONSTRAINT fk_pieza FOREIGN KEY (fk_pieza)
        REFERENCES public.pieza (pie_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_sede FOREIGN KEY (fk_sede)
        REFERENCES public.sede (sed_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pieza_sede
    OWNER to grupo_rsm;

-- Table: public.pro_mat

-- DROP TABLE IF EXISTS public.pro_mat;

CREATE TABLE IF NOT EXISTS public.pro_mat
(
    promat_cantidad numeric NOT NULL,
    promat_costo numeric(10,4) NOT NULL,
    fk_proveedor integer NOT NULL,
    fk_tmat integer NOT NULL,
    CONSTRAINT pk_pro_mat PRIMARY KEY (fk_proveedor, fk_tmat),
    CONSTRAINT pro_mat_fk_proveedor_fkey FOREIGN KEY (fk_proveedor)
        REFERENCES public.proveedor (prove_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT pro_tmat_fk_tmat_fkey FOREIGN KEY (fk_tmat)
        REFERENCES public.tipo_material (tipo_mat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pro_mat
    OWNER to grupo_rsm;

-- Table: public.prueba

-- DROP TABLE IF EXISTS public.prueba;

CREATE TABLE IF NOT EXISTS public.prueba
(
    pru_cod integer NOT NULL DEFAULT nextval('prueba_cod_seq'::regclass),
    "fk_tipoPrueba" integer NOT NULL,
    pru_duracion_real numeric,
    CONSTRAINT prueba_pkey PRIMARY KEY (pru_cod),
    CONSTRAINT "prueba_fk_tipoPrueba_fkey" FOREIGN KEY ("fk_tipoPrueba")
        REFERENCES public.tipo_prueba (tprueba_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.prueba
    OWNER to grupo_rsm;

-- Table: public.recetario

-- DROP TABLE IF EXISTS public.recetario;

CREATE TABLE IF NOT EXISTS public.recetario
(
    "fk_tpPieza" integer NOT NULL,
    cantidad numeric NOT NULL DEFAULT 1.0,
    "fk_tpMaterial" integer NOT NULL,
    CONSTRAINT recetario_pkey PRIMARY KEY ("fk_tpPieza", "fk_tpMaterial"),
    CONSTRAINT "recetario_fk_tpMaterial_fkey" FOREIGN KEY ("fk_tpMaterial")
        REFERENCES public.tipo_material (tipo_mat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "recetario_fk_tpPieza_fkey" FOREIGN KEY ("fk_tpPieza")
        REFERENCES public.tipo_pieza (tp_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.recetario
    OWNER to grupo_rsm;

-- Table: public.solicitud_sede

-- DROP TABLE IF EXISTS public.solicitud_sede;

CREATE TABLE IF NOT EXISTS public.solicitud_sede
(
    solsed_cod integer NOT NULL DEFAULT nextval('solicitud_sede_solsed_cod_seq'::regclass),
    solsed_tipo character varying(50) COLLATE pg_catalog."default" NOT NULL,
    solsed_desc character varying(100) COLLATE pg_catalog."default",
    fk_sede integer,
    fk_material integer,
    CONSTRAINT solicitud_sede_pkey PRIMARY KEY (solsed_cod),
    CONSTRAINT solicitud_sede_fk_material_fkey FOREIGN KEY (fk_material)
        REFERENCES public.material (mat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT solicitud_sede_fk_sede_fkey FOREIGN KEY (fk_sede)
        REFERENCES public.sede (sed_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.solicitud_sede
    OWNER to grupo_rsm;

-- Table: public.tipo_mat_pru

-- DROP TABLE IF EXISTS public.tipo_mat_pru;

CREATE TABLE IF NOT EXISTS public.tipo_mat_pru
(
    matpr_fecha_ini timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    matpr_fecha_fin timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_mat integer NOT NULL,
    fk_pru integer NOT NULL,
    CONSTRAINT tipo_mat_pru_pkey PRIMARY KEY (fk_mat, fk_pru),
    CONSTRAINT tipo_mat_pru_fk_mat_fkey FOREIGN KEY (fk_mat)
        REFERENCES public.material (mat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT tipo_mat_pru_fk_pru_fkey FOREIGN KEY (fk_pru)
        REFERENCES public.prueba (pru_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tipo_mat_pru
    OWNER to grupo_rsm;

-- Table: public.tipo_mod_pru

-- DROP TABLE IF EXISTS public.tipo_mod_pru;

CREATE TABLE IF NOT EXISTS public.tipo_mod_pru
(
    modpr_fecha_ini timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modpr_fecha_fin timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_modelo integer NOT NULL,
    fk_pru integer NOT NULL,
    CONSTRAINT tipo_mod_pru_pkey PRIMARY KEY (fk_modelo, fk_pru),
    CONSTRAINT tipo_mod_pru_fk_modelo_fkey FOREIGN KEY (fk_modelo)
        REFERENCES public.modelo (mod_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT tipo_mod_pru_fk_pru_fkey FOREIGN KEY (fk_pru)
        REFERENCES public.prueba (pru_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tipo_mod_pru
    OWNER to grupo_rsm;

-- Table: public.tipo_pie_pru

-- DROP TABLE IF EXISTS public.tipo_pie_pru;

CREATE TABLE IF NOT EXISTS public.tipo_pie_pru
(
    matpr_fecha_ini timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    matpr_fecha_fin timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_pie integer NOT NULL,
    fk_pru integer NOT NULL,
    CONSTRAINT tipo_pie_pru_pkey PRIMARY KEY (fk_pie, fk_pru),
    CONSTRAINT tipo_pie_pru_fk_pie_fkey FOREIGN KEY (fk_pie)
        REFERENCES public.pieza (pie_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT tipo_pie_pru_fk_pru_fkey FOREIGN KEY (fk_pru)
        REFERENCES public.prueba (pru_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tipo_pie_pru
    OWNER to grupo_rsm;

-- Table: public.avi_pru

-- DROP TABLE IF EXISTS public.avi_pru;

CREATE TABLE IF NOT EXISTS public.avi_pru
(
    avipr_fecha_ini timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    avipr_fecha_fin timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_avion integer NOT NULL,
    fk_pru integer NOT NULL,
    CONSTRAINT tipo_avi_pru_pkey PRIMARY KEY (fk_avion, fk_pru),
    CONSTRAINT avi_pru_fk_pru_fkey FOREIGN KEY (fk_pru)
        REFERENCES public.prueba (pru_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT tipo_avi_pru_fk_avion_fkey FOREIGN KEY (fk_avion)
        REFERENCES public.avion (avion_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.avi_pru
    OWNER to grupo_rsm;

-- Table: public.Av_Pi

-- DROP TABLE IF EXISTS public."Av_Pi";

CREATE TABLE IF NOT EXISTS public."Av_Pi"
(
    "fk_Avion" integer NOT NULL,
    "fk_Pieza" integer NOT NULL,
    CONSTRAINT "Av_Pi_pkey" PRIMARY KEY ("fk_Avion", "fk_Pieza"),
    CONSTRAINT "Av_Pi_fk_Avion_fkey" FOREIGN KEY ("fk_Avion")
        REFERENCES public.avion (avion_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Av_Pi_fk_Pieza_fkey" FOREIGN KEY ("fk_Pieza")
        REFERENCES public.pieza (pie_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Av_Pi"
    OWNER to grupo_rsm;

-- Table: public.construccion

-- DROP TABLE IF EXISTS public.construccion;

CREATE TABLE IF NOT EXISTS public.construccion
(
    cons_cod numeric(10,2) NOT NULL DEFAULT nextval('cons_cod_seq'::regclass),
    cons_fecha_ini date NOT NULL,
    cons_fecha_fin date,
    fk_avion integer,
    cons_tiempo_estimado integer,
    CONSTRAINT construccion_pkey PRIMARY KEY (cons_cod),
    CONSTRAINT construccion_fk_avion_fkey FOREIGN KEY (fk_avion)
        REFERENCES public.avion (avion_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.construccion
    OWNER to grupo_rsm;

-- Trigger: before_insert_construccion

-- DROP TRIGGER IF EXISTS before_insert_construccion ON public.construccion;

CREATE TRIGGER before_insert_construccion
    BEFORE INSERT
    ON public.construccion
    FOR EACH ROW
    EXECUTE FUNCTION public.calcular_tiempo_estimado();

-- Table: public.Equipo

-- DROP TABLE IF EXISTS public."Equipo";

CREATE TABLE IF NOT EXISTS public."Equipo"
(
    "Equi_cod" integer NOT NULL DEFAULT nextval('equipo_seq'::regclass),
    fk_construccion numeric(10,2) NOT NULL,
    CONSTRAINT "Equipo_pkey" PRIMARY KEY ("Equi_cod"),
    CONSTRAINT fk_construccion FOREIGN KEY (fk_construccion)
        REFERENCES public.construccion (cons_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Equipo"
    OWNER to grupo_rsm;

-- Table: public.trabajo_equipo

-- DROP TABLE IF EXISTS public.trabajo_equipo;

CREATE TABLE IF NOT EXISTS public.trabajo_equipo
(
    te_cod integer NOT NULL DEFAULT nextval('te_seq'::regclass),
    te_tiempo_estim date NOT NULL,
    te_nombre_trabajo character varying(50) COLLATE pg_catalog."default" NOT NULL,
    te_tiempo_real date,
    fk_equipo integer,
    CONSTRAINT trabajo_equipo_pkey PRIMARY KEY (te_cod),
    CONSTRAINT fk_equipo FOREIGN KEY (fk_equipo)
        REFERENCES public."Equipo" ("Equi_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.trabajo_equipo
    OWNER to grupo_rsm;

-- Table: public.detalle_compra

-- DROP TABLE IF EXISTS public.detalle_compra;

CREATE TABLE IF NOT EXISTS public.detalle_compra
(
    detcomp_cod integer NOT NULL DEFAULT nextval('detalle_compra_detcomp_cod_seq'::regclass),
    detcomp_fecha_compra timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    detcomp_cantidad integer NOT NULL,
    fk_compra integer,
    fk_material integer,
    CONSTRAINT detalle_compra_pkey PRIMARY KEY (detcomp_cod),
    CONSTRAINT detalle_compra_fk_compra_fkey FOREIGN KEY (fk_compra)
        REFERENCES public.compra (compr_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT detalle_compra_fk_material_fkey FOREIGN KEY (fk_material)
        REFERENCES public.material (mat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.detalle_compra
    OWNER to grupo_rsm;

-- Table: public.equi_per

-- DROP TABLE IF EXISTS public.equi_per;

CREATE TABLE IF NOT EXISTS public.equi_per
(
    equiper_cod integer NOT NULL DEFAULT nextval('equi_per_equiper_cod_seq'::regclass),
    equiper_fechasig_ini timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    equiper_fechasig_fin timestamp without time zone,
    fk_equipo integer,
    fk_personal integer,
    CONSTRAINT equi_per_pkey PRIMARY KEY (equiper_cod),
    CONSTRAINT equi_per_fk_equipo_fkey FOREIGN KEY (fk_equipo)
        REFERENCES public."Equipo" ("Equi_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT equi_per_fk_personal_fkey FOREIGN KEY (fk_personal)
        REFERENCES public."Personal" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.equi_per
    OWNER to grupo_rsm;

-- Table: public.est_mat

-- DROP TABLE IF EXISTS public.est_mat;

CREATE TABLE IF NOT EXISTS public.est_mat
(
    estmat_fecha_ini timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estmat_fecha_fin timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_estatus integer NOT NULL,
    fk_mat integer NOT NULL,
    CONSTRAINT est_mat_pkey PRIMARY KEY (fk_estatus, fk_mat),
    CONSTRAINT est_mat_fk_estatus_fkey FOREIGN KEY (fk_estatus)
        REFERENCES public.estatus (estat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT est_mat_fk_mat_fkey FOREIGN KEY (fk_mat)
        REFERENCES public.material (mat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.est_mat
    OWNER to grupo_rsm;

-- Table: public.est_pie

-- DROP TABLE IF EXISTS public.est_pie;

CREATE TABLE IF NOT EXISTS public.est_pie
(
    estpi_fecha_ini timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estpi_fecha_fin timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_estatus integer NOT NULL,
    fk_pie integer NOT NULL,
    CONSTRAINT est_pie_pkey PRIMARY KEY (fk_estatus, fk_pie),
    CONSTRAINT est_pie_fk_estatus_fkey FOREIGN KEY (fk_estatus)
        REFERENCES public.estatus (estat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT est_pie_fk_pie_fkey FOREIGN KEY (fk_pie)
        REFERENCES public.pieza (pie_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.est_pie
    OWNER to grupo_rsm;

-- Table: public.est_pru

-- DROP TABLE IF EXISTS public.est_pru;

CREATE TABLE IF NOT EXISTS public.est_pru
(
    espr_fecha_ini timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    espr_fecha_fin timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_est integer NOT NULL,
    fk_pru integer NOT NULL,
    CONSTRAINT est_pru_pkey PRIMARY KEY (fk_est, fk_pru),
    CONSTRAINT est_pru_fk_est_fkey FOREIGN KEY (fk_est)
        REFERENCES public.estatus (estat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT est_pru_fk_pru_fkey FOREIGN KEY (fk_pru)
        REFERENCES public.prueba (pru_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.est_pru
    OWNER to grupo_rsm;

-- Table: public.maquinaria

-- DROP TABLE IF EXISTS public.maquinaria;

CREATE TABLE IF NOT EXISTS public.maquinaria
(
    maq_cod integer NOT NULL DEFAULT nextval('maquinaria_seq'::regclass),
    maq_descripcion text COLLATE pg_catalog."default",
    "fk_Tmaquina" integer NOT NULL,
    CONSTRAINT maquinaria_pkey PRIMARY KEY (maq_cod),
    CONSTRAINT "maquinaria_fk_Tmaquina_fkey" FOREIGN KEY ("fk_Tmaquina")
        REFERENCES public.tipo_maquinaria (tipo_maq_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.maquinaria
    OWNER to grupo_rsm;

-- Table: public.maq_cons

-- DROP TABLE IF EXISTS public.maq_cons;

CREATE TABLE IF NOT EXISTS public.maq_cons
(
    macon_fechasig_ini timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    macon_fechasig_fin timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_maqui integer NOT NULL,
    fk_construc integer NOT NULL,
    CONSTRAINT maq_cons_pkey PRIMARY KEY (fk_maqui, fk_construc),
    CONSTRAINT maq_cons_fk_construc_fkey FOREIGN KEY (fk_construc)
        REFERENCES public.construccion (cons_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT maq_cons_fk_maqui_fkey FOREIGN KEY (fk_maqui)
        REFERENCES public.maquinaria (maq_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.maq_cons
    OWNER to grupo_rsm;

-- Table: public.Maq_Mod

-- DROP TABLE IF EXISTS public."Maq_Mod";

CREATE TABLE IF NOT EXISTS public."Maq_Mod"
(
    "fk_tpMaquinaria" integer NOT NULL,
    "fk_Modelo" integer NOT NULL,
    CONSTRAINT "Maq_Mod_pkey" PRIMARY KEY ("fk_tpMaquinaria", "fk_Modelo"),
    CONSTRAINT "Maq_Mod_fk_Modelo_fkey" FOREIGN KEY ("fk_Modelo")
        REFERENCES public.modelo (mod_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Maq_Mod_fk_tpMaquinaria_fkey" FOREIGN KEY ("fk_tpMaquinaria")
        REFERENCES public.tipo_maquinaria (tipo_maq_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Maq_Mod"
    OWNER to grupo_rsm;

-- Table: public.area_cons

-- DROP TABLE IF EXISTS public.area_cons;

CREATE TABLE IF NOT EXISTS public.area_cons
(
    fk_area integer NOT NULL,
    fk_const integer NOT NULL,
    CONSTRAINT area_cons_pkey PRIMARY KEY (fk_area, fk_const),
    CONSTRAINT area_cons_fk_area_fkey FOREIGN KEY (fk_area)
        REFERENCES public.area (ar_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT zona_cons_fk_const_fkey FOREIGN KEY (fk_const)
        REFERENCES public.construccion (cons_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.area_cons
    OWNER to grupo_rsm;

-- Table: public.cons_per

-- DROP TABLE IF EXISTS public.cons_per;

CREATE TABLE IF NOT EXISTS public.cons_per
(
    consper_fechasig_ini timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    consper_fechasig_fin timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_construccion integer NOT NULL,
    fk_personal integer NOT NULL,
    CONSTRAINT cons_per_pkey PRIMARY KEY (fk_construccion, fk_personal),
    CONSTRAINT cons_per_fk_construccion_fkey FOREIGN KEY (fk_construccion)
        REFERENCES public.construccion (cons_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT cons_per_fk_personal_fkey FOREIGN KEY (fk_personal)
        REFERENCES public."Personal" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cons_per
    OWNER to grupo_rsm;

-- Table: public.Cons_Pi

-- DROP TABLE IF EXISTS public."Cons_Pi";

CREATE TABLE IF NOT EXISTS public."Cons_Pi"
(
    fk_construccion integer NOT NULL,
    fk_pieza integer NOT NULL,
    CONSTRAINT "Cons_Pi_pkey" PRIMARY KEY (fk_construccion, fk_pieza),
    CONSTRAINT "Cons_Pi_fk_construccion_fkey" FOREIGN KEY (fk_construccion)
        REFERENCES public.construccion (cons_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Cons_Pi_fk_pieza_fkey" FOREIGN KEY (fk_pieza)
        REFERENCES public.pieza (pie_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Cons_Pi"
    OWNER to grupo_rsm;

-- Table: public.per_pru

-- DROP TABLE IF EXISTS public.per_pru;

CREATE TABLE IF NOT EXISTS public.per_pru
(
    fk_prueba integer NOT NULL,
    fk_personal integer NOT NULL,
    per_pru_fecha_ini date NOT NULL,
    per_pru_fechafin date,
    "fk_TPiezaPru1" integer,
    "fk_TMaterialPru1" integer,
    "fk_TAvionPru1" integer,
    "fk_TPiezaPru2" integer,
    "fk_TMaterialPru2" integer,
    "fk_TAvionPru2" integer,
    CONSTRAINT per_pru_pkey PRIMARY KEY (fk_prueba, fk_personal),
    CONSTRAINT "per_pru_fk_TAvionPru1_fk_TAvionPru2_fkey" FOREIGN KEY ("fk_TAvionPru1", "fk_TAvionPru2")
        REFERENCES public.avi_pru (fk_avion, fk_pru) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "per_pru_fk_TMaterialPru1_fk_TMaterialPru2_fkey" FOREIGN KEY ("fk_TMaterialPru1", "fk_TMaterialPru2")
        REFERENCES public.tipo_mat_pru (fk_mat, fk_pru) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "per_pru_fk_TPiezaPru1_fk_TPiezaPru2_fkey" FOREIGN KEY ("fk_TPiezaPru1", "fk_TPiezaPru2")
        REFERENCES public.tipo_pie_pru (fk_pie, fk_pru) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT per_pru_fk_personal_fkey FOREIGN KEY (fk_personal)
        REFERENCES public."Personal" ("Per_cod") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT per_pru_fk_prueba_fkey FOREIGN KEY (fk_prueba)
        REFERENCES public.prueba (pru_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.per_pru
    OWNER to grupo_rsm;

--VISTAS

-- View: public.todas_las_personas

-- DROP VIEW public.todas_las_personas;

CREATE OR REPLACE VIEW public.todas_las_personas
 AS
 SELECT p."Per_cod",
    p."Per_nombre",
        CASE
            WHEN n."Per_cod" IS NOT NULL THEN 'natural'::text
            WHEN j."Per_cod" IS NOT NULL THEN 'juridica'::text
            ELSE 'personal'::text
        END AS tipo
   FROM "Persona" p
     LEFT JOIN "Natural" n ON p."Per_cod" = n."Per_cod"
     LEFT JOIN "Juridica" j ON p."Per_cod" = j."Per_cod";

ALTER TABLE public.todas_las_personas
    OWNER TO grupo_rsm;

-- Table: public.Tprueba_Modelo

-- DROP TABLE IF EXISTS public."Tprueba_Modelo";

CREATE TABLE IF NOT EXISTS public."Tprueba_Modelo"
(
    "fk_tipoPrueba" integer NOT NULL,
    fk_modelo integer NOT NULL,
    CONSTRAINT "Tprueba_Modelo_pkey" PRIMARY KEY ("fk_tipoPrueba", fk_modelo),
    CONSTRAINT "Tprueba_Modelo_fk_modelo_fkey" FOREIGN KEY (fk_modelo)
        REFERENCES public.modelo (mod_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Tprueba_Modelo_fk_tipoPrueba_fkey" FOREIGN KEY ("fk_tipoPrueba")
        REFERENCES public.tipo_prueba (tprueba_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Tprueba_Modelo"
    OWNER to grupo_rsm;

-- Table: public.Tprueba_Tmaterial

-- DROP TABLE IF EXISTS public."Tprueba_Tmaterial";

CREATE TABLE IF NOT EXISTS public."Tprueba_Tmaterial"
(
    "fk_tipoPrueba" integer NOT NULL,
    "fk_tipoMaterial" integer NOT NULL,
    CONSTRAINT "Tprueba_Tmaterial_pkey" PRIMARY KEY ("fk_tipoPrueba", "fk_tipoMaterial"),
    CONSTRAINT "Tprueba_Tmaterial_fk_tipoMaterial_fkey" FOREIGN KEY ("fk_tipoMaterial")
        REFERENCES public.tipo_material (tipo_mat_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Tprueba_Tmaterial_fk_tipoPrueba_fkey" FOREIGN KEY ("fk_tipoPrueba")
        REFERENCES public.tipo_prueba (tprueba_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Tprueba_Tmaterial"
    OWNER to grupo_rsm;

-- Table: public.Tprueba_Tpieza

-- DROP TABLE IF EXISTS public."Tprueba_Tpieza";

CREATE TABLE IF NOT EXISTS public."Tprueba_Tpieza"
(
    "fk_tipoPrueba" integer NOT NULL,
    "fk_tipoPieza" integer NOT NULL,
    CONSTRAINT "Tprueba_Tpieza_pkey" PRIMARY KEY ("fk_tipoPrueba", "fk_tipoPieza"),
    CONSTRAINT "Tprueba_Tpieza_fk_tipoPieza_fkey" FOREIGN KEY ("fk_tipoPieza")
        REFERENCES public.tipo_pieza (tp_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Tprueba_Tpieza_fk_tipoPrueba_fkey" FOREIGN KEY ("fk_tipoPrueba")
        REFERENCES public.tipo_prueba (tprueba_cod) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Tprueba_Tpieza"
    OWNER to grupo_rsm;

--Para reiniciar todas las secuencias en 1

DO $$
DECLARE
    seq RECORD;
BEGIN
    FOR seq IN
        SELECT sequence_name
        FROM information_schema.sequences
        WHERE sequence_schema = 'public'
    LOOP
        EXECUTE 'ALTER SEQUENCE ' || seq.sequence_name || ' RESTART WITH 1';
    END LOOP;
END $$;