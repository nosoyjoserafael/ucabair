const pool = require('../config/db');

// Crear datos
const addPerson = async (req, res, next) => {
    const { tipo = null, usuario = null, contra = null, nombre = null, fecha_nac = null, cedula = null, fk_lugar = null, direccion = null, estado_civir = null, apellido = null, razon_social = null } = req.body;
  try {
    const result = await pool.query(
      'SELECT registrar_persona($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)', [tipo, nombre, fecha_nac, cedula, fk_lugar, direccion, usuario, contra, apellido, estado_civir, razon_social]
    );
    if (result.rows[0].validar_usuario === false) { // Si el usuario/clave no existe
      return res.status(401).json({ message: 'AAAAAAAAAAAAAAAAAAH' });
    }
    
    return res.status(200).json({ message: 'Usuario registrado correctamente' });

  } catch (err) {
    next(err);
  }
};

module.exports = { addPerson };