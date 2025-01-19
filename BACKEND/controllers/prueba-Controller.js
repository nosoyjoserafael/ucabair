const pool = require('../config/db');

const getPrueba = async (req, res, next) => {
  try {
    const result = await pool.query('SELECT * FROM get_pruebas()');
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const postPrueba = async (req, res, next) => {
    const { TPcod, timereal } = req.body;
    try {
        const result = await pool.query(
            `
            CALL post_tipo_prueba($1, $2)
            `, [ TPcod, timereal ]
        );
        return res.status(200).json({ message: 'Tipo de prueba registrada correctamente' });

    } catch (err) {
      next(err);
    }
};

const putPrueba = async (req, res, next) => {
  const { Pcod, timereal } = req.body;
    try {
          const result = await pool.query(
            `
            CALL put_prueba($1, $2)
            `, [Pcod, timereal]
          );
    return res.status(200).json({ message: 'Tipo de prueba actualizada correctamente' });

    } catch (err) {
    next(err);
    }
};

const deletePrueba = async (req, res, next) => {
  try {
    const { Pcod } = req.body;
    const result = await pool.query(
      `
      DELETE FROM public.prueba
      WHERE pru_cod = $1
      `, [Pcod]
    );
    return res.status(200).json({ message: 'Tipo de prueba eliminada correctamente' });
  } catch (err) {
    next(err);
  }
};

module.exports = { getPrueba, putPrueba, postPrueba, deletePrueba };