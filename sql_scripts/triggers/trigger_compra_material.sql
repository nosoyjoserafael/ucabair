CREATE OR REPLACE FUNCTION insertar_compra(
    p_nombre_material VARCHAR,
    p_cantidad INTEGER
) RETURNS INTEGER AS $$
DECLARE
    v_costo_unitario NUMERIC;
    v_id_tipo_mat INTEGER;
    v_id_compra INTEGER;
    v_id_det_compra INTEGER;
    v_monto_total NUMERIC;
BEGIN
    -- Obtener el ID del tipo de material
    SELECT tipo_mat_cod INTO v_id_tipo_mat
    FROM tipo_material
    WHERE tipo_mat_nombre = p_nombre_material;

    -- Obtener el costo unitario del material
    SELECT promat_costo INTO v_costo_unitario
    FROM pro_mat
    WHERE fk_tmat = v_id_tipo_mat;

    -- Calcular el monto total
    v_monto_total := p_cantidad * v_costo_unitario;

    -- Insertar la compra
    INSERT INTO compra (compr_preciotot, fk_proveedor)
    VALUES (v_monto_total, (SELECT prove_cod
							FROM proveedor
							ORDER BY random()
							LIMIT 1))
    RETURNING compr_cod INTO v_id_compra;

    IF (SELECT count(*) FROM material WHERE "fk_TMaterial" = v_id_tipo_mat AND fk_sede = 1) = 0 THEN
        -- Insertar el material para la sede de La Guaira
        INSERT INTO material (mat_cantidad, mat_fecha_in, "fk_TMaterial", fk_sede)
        VALUES (p_cantidad, current_date, v_id_tipo_mat, 1);
    ELSE
        -- Actualizar el stock del material
        UPDATE material 
        SET mat_cantidad = mat_cantidad + p_cantidad
        WHERE "fk_TMaterial" = v_id_tipo_mat;
    END IF;

    -- Insertar el detalle de la compra
    INSERT INTO detalle_compra (detcomp_fecha_compra, detcomp_cantidad, fk_compra, fk_material)
    VALUES (current_date, p_cantidad, v_id_compra, v_id_tipo_mat)
    RETURNING detcomp_cod INTO v_id_det_compra;

    RETURN v_id_det_compra;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE EXCEPTION 'Material no encontrado';
    WHEN OTHERS THEN
        RAISE;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION verificar_stock() RETURNS trigger AS $$
DECLARE
    v_nombre_material VARCHAR;
BEGIN
  IF NEW.mat_cantidad < 200 THEN
    SELECT tipo_mat_nombre INTO v_nombre_material
    FROM tipo_material
    WHERE tipo_mat_cod = NEW."fk_TMaterial";

    PERFORM insertar_compra(v_nombre_material, 200);
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER verificar_stock_trigger
  AFTER UPDATE OF mat_cantidad ON material
  FOR EACH ROW
  EXECUTE FUNCTION verificar_stock();