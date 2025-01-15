CREATE OR REPLACE FUNCTION get_tasa_de_cambio()
RETURNS TABLE(
    tdc_cod INTEGER,
    tdc_mon_origen VARCHAR,
    tdc_mon_destino VARCHAR,
    tdc_valor NUMERIC
) AS $$
BEGIN
    RETURN QUERY
    SELECT tdc.tdc_cod, tdc.tdc_mon_origen, tdc.tdc_mon_destino, tdc.tdc_valor
    FROM tasa_cambio tdc;
END;
$$ LANGUAGE plpgsql;