CREATE OR REPLACE PROCEDURE post_transferencia(    
    p_tr_fecha DATE, -- Solo cambian estos campos
    p_tr_banco VARCHAR,

    p_monto_total NUMERIC,
    p_tasa_cambio_cod INTEGER,
    p_avion_cod INTEGER,
    p_cliente_cod INTEGER
) AS $$
DECLARE
    v_metpago_cod INTEGER;
    v_pedido_cod INTEGER;
    v_venta_cod  INTEGER;
BEGIN

    v_pedido_cod := nextval('pedido_pedi_cod_seq');
    INSERT INTO pedido (pedi_cod, pedi_fecha, fk_cliente, fk_avion)
    VALUES (v_pedido_cod, current_date, p_cliente_cod, p_avion_cod);

    v_venta_cod := nextval('venta_ven_cod_seq');
    INSERT INTO venta (ven_cod, ven_monto, ven_cantidad, ven_fecha, fk_pedido)
    VALUES (v_venta_cod, p_monto_total, 1, current_date, v_pedido_cod);

    v_metpago_cod := nextval('metodo_pago_metpago_cod_seq');
    INSERT INTO transferencia (metpago_cod, fk_tasa_cambio, tr_fecha, tr_banco)
    VALUES (v_metpago_cod,p_tasa_cambio_cod, p_tr_fecha, p_tr_banco);

    INSERT INTO pago (pago_hora_fecha, pago_monto_final, fk_pago_movil, fk_venta)
    VALUES (current_timestamp, p_monto_total, v_metpago_cod, v_venta_cod);

END;
$$ LANGUAGE plpgsql;