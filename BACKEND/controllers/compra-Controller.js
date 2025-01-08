const pool = require('../config/db');

const postCompra = async (req, res, next) => {
    try {
        const { modelo } = req.body;
        const result = await pool.query('SELECT compra_avion($1);', [modelo]);

        return res.status(200).json(result.rows, { message: 'Compra de avion registrada correctamente' });;
    } catch (err) {
        next(err);
    }
};

module.exports = { postCompra };