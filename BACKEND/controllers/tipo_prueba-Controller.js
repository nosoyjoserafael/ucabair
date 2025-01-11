const pool = require('../config/db');

const getTPprueba = async (req, res, next) => {
  try {
    const result = await pool.query('SELECT * FROM get_tipos_de_pruebas()');
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const postTPprueba = async (req, res, next) => {
    const { nombre, descripcion, timestim } = req.body;
    try {
        const result = await pool.query(
            `
            CALL post_tipo_prueba($1, $2, $3)
            `, [ nombre, descripcion, timestim]
        );
        return res.status(200).json({ message: 'Tipo de prueba registrada correctamente' });

    } catch (err) {
      next(err);
    }
};

const putTPprueba = async (req, res, next) => {
  const { TPcod, nombre, descripcion, timestim } = req.body;
    try {
          const result = await pool.query(
            `
            CALL put_tipos_de_pruebas($1, $2, $3, $4)
            `, [TPcod, nombre, descripcion, timestim]
          );
    return res.status(200).json({ message: 'Tipo de prueba actualizada correctamente' });

    } catch (err) {
    next(err);
    }
};

const deleteTPprueba = async (req, res, next) => {
  try {
    const { TPcod } = req.body;
    const result = await pool.query(
      `
      CALL delete_tipo_prueba($1)
      `, [TPcod]
    );
    return res.status(200).json({ message: 'Tipo de prueba eliminada correctamente' });
  } catch (err) {
    next(err);
  }
};

module.exports = { getTPprueba, putTPprueba, postTPprueba, deleteTPprueba };