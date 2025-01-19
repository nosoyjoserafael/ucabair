const pool = require('../config/db');

const getRol = async (req, res, next) => {
    try {
        const result = await pool.query('SELECT U.user_nombre,R.rol_nombre FROM public."usuario" U, public."rol" R WHERE U.fk_rol = R.rol_cod;');
        res.json(result.rows);
    } catch (err) {
        next(err);
    }
};



module.exports = { getRol };