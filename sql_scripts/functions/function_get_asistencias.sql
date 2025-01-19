CREATE OR REPLACE FUNCTION get_asistencias()
RETURNS TABLE(
    nombre_personal VARCHAR,
    asis_fecha_asistida DATE,
    asis_hora_asistida TIME WITHOUT TIME ZONE,
    asis_hora_salida TIME WITHOUT TIME ZONE,
    fk_personal INTEGER,
    asis_cod INTEGER
) AS $$
BEGIN
    RETURN QUERY
    SELECT per."Per_nombre", asis.asis_fecha_asistida, asis.asis_hora_entrada, asis.asis_hora_salida, asig.fk_personal, asis.asis_cod
    FROM "Personal" as per, asistencia as asis, asignacion as asig
	where per."Per_cod" = asig.fk_personal and 
    asig.asig_cod = asis.fk_asignacion
	order by 3;
END;
$$ LANGUAGE plpgsql;