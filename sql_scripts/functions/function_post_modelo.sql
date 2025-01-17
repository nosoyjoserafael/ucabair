CREATE OR REPLACE FUNCTION post_modelo(
    nombre TEXT,
    cap_tripulacion INTEGER,
    cap_pasajero INTEGER,
    longitud INTEGER,
    envergadura INTEGER,
    altura INTEGER,
    flecha_alar INTEGER,
    peso_vacio INTEGER,
    peso_max_despegue INTEGER,
    peso_max_aterrizaje INTEGER,
    velocidad_crucero INTEGER,
    velocidad_max INTEGER,
    capacidad_max_combustible INTEGER,
    motor INTEGER,
    precio NUMERIC,
    descripcion TEXT
)
RETURNS VOID AS $$ 
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
$$ LANGUAGE plpgsql;