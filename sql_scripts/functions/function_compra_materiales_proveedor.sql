CREATE OR REPLACE FUNCTION compra_materiales_proveedor(
    p_tipo_material_cod INTEGER,
    p_cantidad NUMERIC,
    p_proveedor_cod INTEGER DEFAULT NULL
) RETURNS INTEGER AS $$
DECLARE
    v_costo_unitario NUMERIC;
    v_id_compra INTEGER;
    v_id_det_compra INTEGER;
    v_cod_material INTEGER;
    v_monto_total NUMERIC;
    v_prove_cod INTEGER;
BEGIN    
    -- Obtener el costo unitario del material
    SELECT promat_costo INTO v_costo_unitario
    FROM pro_mat
    WHERE fk_tmat = p_tipo_material_cod;

    -- Calcular el monto total
    v_monto_total := p_cantidad * v_costo_unitario;

    -- Insertar la compra

    IF p_proveedor_cod IS NOT NULL THEN
        INSERT INTO compra (compr_preciotot, fk_proveedor)
        VALUES (v_monto_total, p_proveedor_cod)
        RETURNING compr_cod, fk_proveedor INTO v_id_compra, v_prove_cod;
    ELSE
        INSERT INTO compra (compr_preciotot, fk_proveedor)
        VALUES (v_monto_total, (SELECT prove_cod
                                FROM proveedor
                                WHERE prove_cod in (SELECT fk_proveedor
                                                    FROM pro_mat
                                                    WHERE fk_tmat = p_tipo_material_cod AND
                                                    fk_proveedor = prove_cod AND
                                                    promat_cantidad >= p_cantidad)
                                ORDER BY random()
                                LIMIT 1))
        RETURNING compr_cod, fk_proveedor INTO v_id_compra, v_prove_cod;
    END IF;

    -- Actualizar la cantidad de material en el proveedor
    UPDATE pro_mat
    SET promat_cantidad = promat_cantidad - p_cantidad
    WHERE fk_tmat = p_tipo_material_cod
    AND fk_proveedor = v_prove_cod;

    IF (SELECT count(*) FROM material WHERE "fk_TMaterial" = p_tipo_material_cod AND fk_sede = 1) = 0 THEN
        
        v_cod_material := nextval('material_mat_cod_seq');
        -- Insertar el material para la sede de La Guaira
        INSERT INTO material (mat_cod,mat_cantidad, mat_fecha_in, "fk_TMaterial", fk_sede)
        VALUES (v_cod_material,p_cantidad, current_date, p_tipo_material_cod, 1);

        insert into est_mat(estmat_fecha_ini, fk_estatus, fk_mat)
        VALUES (current_date, 7, v_cod_material);
    ELSE
        -- Actualizar el stock del material
        UPDATE material 
        SET mat_cantidad = mat_cantidad + p_cantidad
        WHERE "fk_TMaterial" = p_tipo_material_cod;
    END IF;

    -- Insertar el detalle de la compra
    INSERT INTO detalle_compra (detcomp_fecha_compra, detcomp_cantidad, fk_compra, fk_material)
    VALUES (current_date, p_cantidad, v_id_compra, p_tipo_material_cod)
    RETURNING detcomp_cod INTO v_id_det_compra;

    RETURN v_id_det_compra;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE EXCEPTION 'Material no encontrado';
    WHEN OTHERS THEN
        RAISE;
END;
$$ LANGUAGE plpgsql;