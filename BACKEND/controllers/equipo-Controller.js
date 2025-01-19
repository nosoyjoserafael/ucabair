const pool = require('../config/db');

const getEquipo = async (req, res, next) => {
  try {
    const result = await pool.query('SELECT * FROM get_equipos()');
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const postEquipo = async (req, res, next) => {
  try {
    const {
      empleados, nombre, timestim, construccionCod
    } = req.body;
    
    const client = await pool.connect();
    try {
      await client.query('BEGIN');

      await client.query(`
        CALL post_equipo($1::integer[], $2, $3, $4)
      `, [
        empleados, nombre, timestim, construccionCod
      ]);

      await client.query('COMMIT');
      res.status(201).send({ message: 'Equipo creado exitosamente' });
    } catch (error) {
      await client.query('ROLLBACK');
      next(error);
    } finally {
      client.release();
    }
  } catch (error) {
    next(error);
  }
};

const putEquipo = async (req, res, next) => {
  try {
    const { equipoCod, trabajoCod, nombre, timestim, timereal } = req.body;
    console.log(req.body);
    const client = await pool.connect();
    try {
      await client.query('BEGIN');

      const result = await client.query(`
        CALL put_equipo($1, $2, $3, $4, $5)
      `, [equipoCod, trabajoCod, nombre, timestim, timereal]);

      await client.query('COMMIT');
      res.json({ message: 'Equipo cambiado con exito' });
    } catch (error) {
      await client.query('ROLLBACK');
      if (error.message === 'Equipo o trabajo no encontrado') {
        res.status(404).json({ message: 'Equipo o trabajo no encontrado' });
      } else {
        next(error);
      }
    } finally {
      client.release();
    }
  } catch (err) {
    next(err);
  }
};

const deleteEquipo = async (req, res, next) => {
  try {
    const { equipoCod } = req.body;

    const client = await pool.connect();
    try {
      await client.query('BEGIN');

      await client.query(`
        CALL delete_equipo($1)
      `, [equipoCod]);

      await client.query('COMMIT');
      res.status(200).send({ message: 'Equipo eliminado exitosamente' });
    } catch (error) {
      await client.query('ROLLBACK');
      if (error.message === 'Equipo no encontrado') {
        res.status(404).json({ message: 'Equipo no encontrado' });
      } else {
        next(error);
      }
    } finally {
      client.release();
    }
  } catch (error) {
    next(error);
  }
};

module.exports = { getEquipo, postEquipo, putEquipo, deleteEquipo };