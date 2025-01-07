const pool = require('../config/db');
//const { get } = require('../routes/modelo-Routes');

const getModelo = async (req, res, next) => {
  try {
    const result = await pool.query('SELECT * FROM public."modelo"');
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const getCarac = async (req, res, next) => {
  try {
    const result = await pool.query(`
      SELECT m.mod_cod, c.carac_nombre, mc.mod_carac_cantidad
      FROM public."modelo" m
      JOIN public."mod_carac" mc ON m.mod_cod = mc.fk_modelo
      JOIN public."caracteristica" c ON mc.fk_carac = c.carac_cod
    `);

    const modelos = {};
    result.rows.forEach(row => {
      if (!modelos[row.mod_cod]) {
        modelos[row.mod_cod] = {};
      }
      modelos[row.mod_cod][row.carac_nombre] = row.mod_carac_cantidad;
    });

    res.json(modelos);
  } catch (err) {
    next(err);
  }
};

const postModelo = async (req, res, next) => {
  try {
    const { Nombre, Cap_tripulacion, Cap_pasajero, Dist_Asiento, Longitud, Envergadura, Altura, Flecha_alar, Ancho_fuselaje, Alto_fuselaje, Ancho_cabina, Alto_cabina, Peso_vacio, Peso_max_despegue, Peso_max_aterrizaje, Velocidad_crucero, Velocidad_max, Alcance_carga_max, Capacidad_max_combustible, Motor, Empuje_max, Empuje_normal, Longitud_motor } = req.body;

    const client = await pool.connect();
    try {
      await client.query('BEGIN');

      const modeloResult = await client.query(`
        INSERT INTO public."modelo" (mod_cod, mod_nombre)
        VALUES (nextval('mod_cod_seq'), $1)
        RETURNING mod_cod
      `, [Nombre]);

      const mod_cod = modeloResult.rows[0].mod_cod;

      const caracValues = [
        ['Cap_tripulacion', Cap_tripulacion],
        ['Cap_pasajero', Cap_pasajero],
        ['Dist_Asiento', Dist_Asiento],
        ['Longitud', Longitud],
        ['Envergadura', Envergadura],
        ['Altura', Altura],
        ['Flecha_alar', Flecha_alar],
        ['Ancho_fuselaje', Ancho_fuselaje],
        ['Alto_fuselaje', Alto_fuselaje],
        ['Ancho_cabina', Ancho_cabina],
        ['Alto_cabina', Alto_cabina],
        ['Peso_vacio', Peso_vacio],
        ['Peso_max_despegue', Peso_max_despegue],
        ['Peso_max_aterrizaje', Peso_max_aterrizaje],
        ['Velocidad_crucero', Velocidad_crucero],
        ['Velocidad_max', Velocidad_max],
        ['Alcance_carga_max', Alcance_carga_max],
        ['Capacidad_max_combustible', Capacidad_max_combustible],
        ['Motor', Motor],
        ['Empuje_max', Empuje_max],
        ['Empuje_normal', Empuje_normal],
        ['Longitud_motor', Longitud_motor]
      ];

      for (const [carac_nombre, mod_carac_cantidad] of caracValues) {
        const caracResult = await client.query(`
          SELECT carac_cod FROM public."caracteristica"
          WHERE carac_nombre = $1
        `, [carac_nombre]);

        const carac_cod = caracResult.rows[0].carac_cod;

        await client.query(`
          INSERT INTO public."mod_carac" (fk_modelo, fk_carac, mod_carac_cantidad)
          VALUES ($1, $2, $3)
        `, [mod_cod, carac_cod, mod_carac_cantidad !== undefined ? mod_carac_cantidad : null]);
      }

      await client.query('COMMIT');
      res.json({ message: 'Modelo creado con éxito' });
    } catch (err) {
      await client.query('ROLLBACK');
      next(err);
    } finally {
      client.release();
    }
  } catch (err) {
    next(err);
  }
};

const putModelo = async (req, res, next) => {
  try {
    const { modelo, nombre, valor } = req.body;

    const result = await pool.query(`
      UPDATE public."mod_carac" mc
      SET mod_carac_cantidad = $1
      FROM public."modelo" m, public."caracteristica" c
      WHERE m.mod_cod = mc.fk_modelo
      AND c.carac_cod = mc.fk_carac
      AND m.mod_nombre = $2
      AND c.carac_nombre = $3
    `, [valor, modelo, nombre]);

    if (result.rowCount === 0) {
      res.status(404).json({ message: 'Modelo o caracteristica no encontrada' });
    } else {
      res.json({ message: 'Caracteristica del modelo cambiada con exito' });
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

      const modeloResult = await client.query(`
        SELECT mod_cod FROM public."modelo"
        WHERE mod_nombre = $1
      `, [Nombre]);

      if (modeloResult.rows.length === 0) {
        res.status(404).json({ message: 'Modelo no encontrado' });
        return;
      }

      const mod_cod = modeloResult.rows[0].mod_cod;

      await client.query(`
        DELETE FROM public."mod_carac"
        WHERE fk_modelo = $1
      `, [mod_cod]);

      await client.query(`
        DELETE FROM public."modelo"
        WHERE mod_cod = $1
      `, [mod_cod]);

      await client.query('COMMIT');
      res.json({ message: 'Modelo eliminado con éxito' });
    } catch (err) {
      await client.query('ROLLBACK');
      next(err);
    } finally {
      client.release();
    }
  } catch (err) {
    next(err);
  }
};

module.exports = { getModelo, getCarac, putModelo, postModelo, deleteModelo };