CREATE OR REPLACE PROCEDURE put_asistencia(
    p_asis_cod INTEGER,
    p_fecha_asistida DATE,
    p_hora_entrada TIME WITHOUT TIME ZONE,
    p_hora_salida TIME WITHOUT TIME ZONE
) AS $$
BEGIN
    UPDATE asistencia
    set asis_fecha_asistida = p_fecha_asistida, 
    asis_hora_entrada = p_hora_entrada, 
    asis_hora_salida = p_hora_salida 
    where asis_cod = p_asis_cod;   
END;
$$ LANGUAGE plpgsql;