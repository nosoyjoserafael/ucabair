CREATE OR REPLACE FUNCTION get_modelo()
RETURNS TABLE(
    cod INTEGER,
    nombre VARCHAR,
    descrip TEXT,
    costo NUMERIC
) AS $$
BEGIN
    RETURN QUERY
	SELECT *
	FROM public."modelo";
END;
$$ LANGUAGE plpgsql;