const pool = require('../config/db');

// Crear datos
const createData = async (req, res, next) => {
const { username } = req.body;
const { clave } = req.body;
try {
    const result = await pool.query(
        'SELECT validar_usuario($1, $2)', [username, clave]
    );
    if (result.rows[0].validar_usuario === false) {
        return res.status(401).json({ message: 'Usuario o contraseña incorrectos' });
    }
    
    res.status(200).json({ message: 'Usuario validado correctamente' });

} catch (err) {
    next(err);
}
};

module.exports = { createData };