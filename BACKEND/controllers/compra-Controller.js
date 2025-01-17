const pool = require('../config/db');

const getTasaCambio = async (req, res, next) => {
    try {
        const result = await pool.query('SELECT * FROM get_tasa_de_cambio()');
        res.json(result.rows);
    } catch (err) {
        next(err);
    }
};

const postCompra = async (req, res, next) => {
    try {
        const { cod, valores, montoTotal, codTasaDeCambio, modelo, codCliente } = req.body;
        switch (cod) {
            case 1: //Pago movil
                const resultPM = await pool.query(`CALL post_Pago_Movil($1, $2, $3, $4, $5)`, [valores[0].value, montoTotal, codTasaDeCambio, modelo, codCliente]);
            break;
            case 2: //Tarjeta de credito
                const resultTC = await pool.query(`CALL post_tarjeta_credito($1, $2, $3, $4, $5, $6, $7)`, [valores[0].value, valores[1].value, valores[2].value, montoTotal, codTasaDeCambio, modelo, codCliente]);
            break;
            case 3: //Tarjeta de debito
                const resultTD = await pool.query(`CALL post_tarjeta_debito($1, $2, $3, $4, $5, $6, $7)`, [valores[0].value, valores[1].value, valores[2].value, montoTotal, codTasaDeCambio, modelo, codCliente]);
            break;
            case 4: //Efectivo
                const resultE = await pool.query(`CALL post_efectivo($1, $2, $3, $4, $5)`, [valores[0].value, montoTotal, codTasaDeCambio, modelo, codCliente]);
            break;
            case 5: //Transferencia
                const resultT = await pool.query(`CALL post_transferencia($1, $2, $3, $4, $5, $6)`, [valores[0].value, valores[1].value, montoTotal, codTasaDeCambio, modelo, codCliente]);
            break;
            case 6: //Cheque
                const resultC = await pool.query(`CALL post_efectivo($1, $2, $3, $4, $5, $6)`, [valores[0].value, valores[1].value, montoTotal, codTasaDeCambio, modelo, codCliente]);
            break;
        }
        const result = await pool.query('SELECT * FROM compra_avion($1)', [modelo]);
        return res.status(200).json(result.rows);
        
    } catch (err) {
        next(err);
    }
};

module.exports = { postCompra, getTasaCambio };