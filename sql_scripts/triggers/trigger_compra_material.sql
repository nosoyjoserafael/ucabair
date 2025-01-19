CREATE OR REPLACE FUNCTION verificar_stock() RETURNS trigger AS $$
DECLARE
    v_tipo_material_cod INTEGER;
BEGIN
  IF NEW.mat_cantidad < 200 THEN
    SELECT tipo_mat_cod INTO v_tipo_material_cod
    FROM tipo_material
    WHERE tipo_mat_cod = NEW."fk_TMaterial";

    PERFORM compra_materiales_proveedor(v_tipo_material_cod, 200);
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER verificar_stock_trigger
  AFTER UPDATE OF mat_cantidad ON material
  FOR EACH ROW
  EXECUTE FUNCTION verificar_stock();