const pool = require('../config/db');
const jwt = require('jsonwebtoken');

const login = async (req, res, next) => {
  const { username, clave } = req.body;
  const secretKey = '12345';
  try {
    const result = await pool.query(
      'SELECT validar_usuario($1, $2)', [username, clave]
    );
    if (result.rows[0].validar_usuario === false) { // Si el usuario/clave no existe
      return res.status(401).json({ message: 'Usuario o contraseña incorrectos' });
    }
    let usu = await pool.query(
      'SELECT * FROM public."usuario" WHERE user_nombre = $1 AND user_seguro = $2', [username, clave]
    );
    const usuario = usu.rows[0];
    const rol = await pool.query(
      'SELECT rol_nombre FROM public."rol" WHERE rol_cod = $1', [usuario.fk_rol]
    );
    role = rol.rows[0];
    
    const token = jwt.sign({ id: usuario.user_cod, username: usuario.user_nombre, role: role }, secretKey, { expiresIn: '1h' });

    return res.status(200).json({ token });

  } catch (err) {
    next(err);
  }
};

const getUsuariosPersona = async (req, res, next) => {
  try {
    const result = await pool.query(
      'SELECT * FROM get_usuarios_personas()'
    );
    return res.status(200).json(result.rows);
  } catch (err) {
    next(err);
  }
};

module.exports = { login, getUsuariosPersona };