CREATE OR REPLACE FUNCTION calcular_nomina(
    p_per_cod INTEGER,
    p_fecha_inicio DATE,
    p_fecha_fin DATE
)
RETURNS TABLE(
    per_cod INTEGER,
    total_nomina NUMERIC,
    asistencias INTEGER,
    sueldo_base NUMERIC,
    sueldo_hora_extra NUMERIC,
    horas_extra_realizadas INTEGER
) AS $$
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

    SELECT horas_extra from calcular_horas_extra(p_per_cod) INTO v_horas_extra;

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
$$ LANGUAGE plpgsql;