const pool = require('../config/db');

const getTPprueba = async (req, res, next) => {
  try {
    const result = await pool.query('SELECT * FROM public."tipo_prueba"');
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const postTPprueba = async (req, res, next) => {
    const { Nombre } = req.body;
    try {
        const result = await pool.query(
            `
            INSERT INTO public."tipo_prueba" (tprueba_cod, tprueba_nombre, tprueba_duracion_estim)
            VALUES (nextval('tpPru_cod_seq'), $1, $2)
            `, [Nombre, (Math.floor(Math.random() * 100) + 1)]
        );
        return res.status(200).json({ message: 'Tipo de prueba registrada correctamente' });

    } catch (err) {
    next(err);
    }
};

const putTPprueba = async (req, res, next) => {
    try {
    const { Nombre, NewNombre, timestim } = req.body;
    const result = await pool.query(
        `
        UPDATE public."tipo_prueba"
        SET tprueba_nombre = $1, tprueba_duracion_estim = $2
        WHERE tprueba_nombre = $3
        `, [NewNombre, timestim, Nombre]
    );
    return res.status(200).json({ message: 'Tipo de prueba actualizada correctamente' });

    } catch (err) {
    next(err);
    }
};

const deleteTPprueba = async (req, res, next) => {
  try {
    const { Nombre } = req.body;
    const result = await pool.query(
      `
      DELETE FROM public."tipo_prueba"
      WHERE tprueba_nombre = $1
      `, [Nombre]
    );
    return res.status(200).json({ message: 'Tipo de prueba eliminada correctamente' });
  } catch (err) {
    next(err);
  }
};

module.exports = { getTPprueba, putTPprueba, postTPprueba, deleteTPprueba };