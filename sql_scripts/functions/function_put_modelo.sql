CREATE OR REPLACE FUNCTION put_modelo(
    p_modelo TEXT,
    p_nombre TEXT,
    p_valor INTEGER,
    p_costo NUMERIC,
    p_descripcion TEXT
)
RETURNS VOID AS $$ 
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
$$ LANGUAGE plpgsql;