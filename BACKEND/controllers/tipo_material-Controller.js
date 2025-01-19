const pool = require('../config/db');

const getTPmaterial = async (req, res, next) => {
    try {
        const result = await pool.query('SELECT * FROM get_tipo_material()');
        res.json(result.rows);
    } catch (err) {
        next(err);
    }
};



module.exports = { getTPmaterial };