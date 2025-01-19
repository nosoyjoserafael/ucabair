const pool = require('../config/db');

const getModelo = async (req, res, next) => {
  try {
    const result = await pool.query('SELECT * FROM get_modelo()');
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const getCarac = async (req, res, next) => {
  try {
    const result = await pool.query(` SELECT * FROM get_carac_procesada() `);
    const modelos = result.rows[0].get_carac_procesada;

    res.json(modelos);
  } catch (err) {
    next(err);
  }
};

const getConstruccion = async (req, res, next) => {
  try {
    const result = await pool.query('SELECT * FROM get_aviones_construccion()');
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const postModelo = async (req, res, next) => {
  try {
    const {
      Nombre, Cap_tripulacion, Cap_pasajero, Longitud, Envergadura, Altura, Flecha_alar, Peso_vacio, Peso_max_despegue, Peso_max_aterrizaje, Velocidad_crucero, Velocidad_max, Capacidad_max_combustible, Motor
    } = req.body;
    
    const client = await pool.connect();
    try {
      await client.query('BEGIN');

      await client.query(`
        SELECT post_modelo($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14)
      `, [
        Nombre, Cap_tripulacion, Cap_pasajero, Longitud, Envergadura, Altura, Flecha_alar, Peso_vacio, Peso_max_despegue, Peso_max_aterrizaje, Velocidad_crucero, Velocidad_max, Capacidad_max_combustible, Motor
      ]);

      await client.query('COMMIT');
      res.status(201).send({ message: 'Modelo creado exitosamente' });
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

const postCompra = async (req, res, next) => {
  try {
    const {
      modelo
    } = req.body;
    
    const client = await pool.connect();
    try {
      await client.query('BEGIN');

      await client.query(`
        SELECT compra_avion($1)
      `, [ modelo ]);

      await client.query('COMMIT');
      res.status(200).send({ message: 'Modelo comprado y registrado exitosamente' });
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

const putModelo = async (req, res, next) => {
  try {
    const { Nombre, caracteristica, valor } = req.body;

    const client = await pool.connect();
    try {
      await client.query('BEGIN');

      const result = await client.query(`
        SELECT put_Modelo($1, $2, $3)
      `, [Nombre, caracteristica, valor]);

      await client.query('COMMIT');
      res.json({ message: 'Caracteristica del modelo cambiada con exito' });
    } catch (error) {
      await client.query('ROLLBACK');
      if (error.message === 'Modelo o caracteristica no encontrada') {
        res.status(404).json({ message: 'Modelo o caracteristica no encontrada' });
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

const deleteModelo = async (req, res, next) => {
  try {
    const { Nombre } = req.body;

    const client = await pool.connect();
    try {
      await client.query('BEGIN');

      await client.query(`
        SELECT delete_modelo($1)
      `, [Nombre]);

      await client.query('COMMIT');
      res.status(200).send({ message: 'Modelo eliminado exitosamente' });
    } catch (error) {
      await client.query('ROLLBACK');
      if (error.message === 'Modelo no encontrado') {
        res.status(404).json({ message: 'Modelo no encontrado' });
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


module.exports = { getModelo, getCarac, getConstruccion, putModelo, postModelo, postCompra, deleteModelo };