CREATE OR REPLACE FUNCTION calcular_nomina() -- sin terminar
RETURNS TABLE(
    avion_cod INT,
    modelo_nombre VARCHAR
) AS $$
BEGIN
   select * from avion a 
    join construccion c on a.avion_cod = c.fk_avion 
    join modelo m on m.mod_cod = a.fk_modelo

END;
$$ LANGUAGE plpgsql;