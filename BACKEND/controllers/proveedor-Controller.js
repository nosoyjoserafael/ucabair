const pool = require('../config/db');

const getProveedor = async (req, res, next) => {
  try {
    const result = await pool.query('SELECT * FROM public."proveedor"');
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const getMateriales = async (req, res, next) => {
  try {
    const result = await pool.query(`
      SELECT p.prove_cod, t.tipo_mat_nombre, pm.promat_cantidad, pm.promat_costo
      FROM public."proveedor" p
      JOIN public."pro_mat" pm ON p.prove_cod = pm.fk_proveedor
      JOIN public."tipo_material" t ON pm.fk_tmat = t.tipo_mat_cod
    `);

    const proveedores = {};
    result.rows.forEach(row => {
      if (!proveedores[row.prove_cod]) {
        proveedores[row.prove_cod] = {};
      }
      proveedores[row.prove_cod][row.tipo_mat_nombre] = {
        cantidad: row.promat_cantidad,
        costo: row.promat_costo
      };
    });

    res.json(proveedores);
  } catch (err) {
    next(err);
  }
};

const postProveedor = async (req, res, next) => {
  try {
    const {
      Nombre,
      Aleacion_de_Aluminio,
      Aleacion_de_Titanio,
      Acero_Inoxidable,
      Compuesto_de_fibra_de_carbono,
      Plastico,
      Textil,
      Cuero,
      Aleacion_de_Magnesio,
      Cobre,
      Aluminio,
      Titanio_Grado_5
    } = req.body;

    const client = await pool.connect();
    try {
      await client.query('BEGIN');

      const proveResult = await client.query(`
        INSERT INTO public."proveedor" (prove_cod, prove_nombre, prove_ci, fk_lugar)
        VALUES (nextval('proveedor_prove_cod_seq'), $1, floor(random() * (30000000 - 10000000 + 1) + 10000000), floor(random() * (1506 - 361 + 1) + 361))
        RETURNING prove_cod
      `, [Nombre]);

      const prove_cod = proveResult.rows[0].prove_cod;

      const materiales = [
        { nombre: 'Aleacion de Aluminio', cantidad: Aleacion_de_Aluminio },
        { nombre: 'Aleacion de Titanio', cantidad: Aleacion_de_Titanio },
        { nombre: 'Acero Inoxidable', cantidad: Acero_Inoxidable },
        { nombre: 'Compuesto de fibra de carbono', cantidad: Compuesto_de_fibra_de_carbono },
        { nombre: 'Plastico', cantidad: Plastico },
        { nombre: 'Textil', cantidad: Textil },
        { nombre: 'Cuero', cantidad: Cuero },
        { nombre: 'Aleacion de Magnesio', cantidad: Aleacion_de_Magnesio },
        { nombre: 'Cobre', cantidad: Cobre },
        { nombre: 'Aluminio', cantidad: Aluminio },
        { nombre: 'Titanio Grado 5', cantidad: Titanio_Grado_5 }
      ];

      for (const material of materiales) {
        const { nombre, cantidad } = material;
        const tipoMatResult = await client.query(`
          SELECT tipo_mat_cod FROM public."tipo_material"
          WHERE tipo_mat_nombre = $1
        `, [nombre]);

        const tipo_mat_cod = tipoMatResult.rows[0].tipo_mat_cod;

        await client.query(`
          INSERT INTO public."pro_mat" (fk_proveedor, fk_tmat, promat_cantidad, promat_costo)
          VALUES ($1, $2, $3, $4)
        `, [prove_cod, tipo_mat_cod, cantidad !== undefined ? cantidad : 0, Math.floor(Math.random() * (100 - 50 + 1) + 50)]);
      }

      await client.query('COMMIT');
      res.json({ message: 'Proveedor creado con éxito' });
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

const putProveedor = async (req, res, next) => {
  try {
    const { proveedor, material, cantidad, costo } = req.body;

    const result = await pool.query(`
      UPDATE public."pro_mat" pm
      SET promat_cantidad = $1, promat_costo = $2
      FROM public."proveedor" p, public."tipo_material" t
      WHERE p.prove_cod = pm.fk_proveedor
      AND t.tipo_mat_cod = pm.fk_tmat
      AND p.prove_nombre = $3
      AND t.tipo_mat_nombre = $4
    `, [cantidad, costo, proveedor, material]);

    if (result.rowCount === 0) {
      res.status(404).json({ message: 'Proveedor o material no encontrado' });
    } else {
      res.json({ message: 'Material del proveedor cambiado con éxito' });
    }
  } catch (err) {
    next(err);
  }
};
/*
const deleteProveedor = async (req, res, next) => {
  try {
    const { Nombre } = req.body;

    const client = await pool.connect();
    try {
      await client.query('BEGIN');

      const proveResult = await client.query(`
        SELECT prove_cod FROM public."proveedor"
        WHERE prove_nombre = $1
      `, [Nombre]);

      if (proveResult.rows.length === 0) {
        res.status(404).json({ message: 'Proveedor no encontrado' });
        return;
      }

      const prove_cod = proveResult.rows[0].prove_cod;

      await client.query(`
        DELETE FROM public."pro_mat"
        WHERE fk_proveedor = $1
      `, [prove_cod]);

      await client.query(`
        DELETE FROM public."proveedor"
        WHERE prove_cod = $1
      `, [prove_cod]);

      await client.query('COMMIT');
      res.json({ message: 'Proveedor eliminado con éxito' });
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
*/
module.exports = { getProveedor, getMateriales, postProveedor, putProveedor };