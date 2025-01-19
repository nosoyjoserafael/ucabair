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
  const { id } = req.params;
  try {
    const result = await pool.query(`
      SELECT p.prove_cod, t.tipo_mat_cod, t.tipo_mat_nombre, pm.promat_cantidad, pm.promat_costo
      FROM public."proveedor" p
      JOIN public."pro_mat" pm ON p.prove_cod = pm.fk_proveedor
      JOIN public."tipo_material" t ON pm.fk_tmat = t.tipo_mat_cod
      WHERE p.prove_cod = $1
    `, [id]);

    return res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const postProveedor = async (req, res, next) => {
  try {
    const {
      Nombre, materialOfrece, cantidad, precio
    } = req.body;

    const proveResult = await pool.query(`
      CALL post_proveedor($1, $2::numeric[], $3::numeric[], $4::numeric[]);
    `, [Nombre, materialOfrece, cantidad, precio]);

    res.status(200).json({ message: 'Proveedor creado con éxito' });
  } catch (err) {
    next(err);
  }
};

const putProveedor = async (req, res, next) => {
  try {
    const { proveedor, material, cantidad, costo } = req.body;

    const result = await pool.query(`
      CALL put_proveedor($1, $2, $3, $4);
    `, [proveedor, material, cantidad, costo]);

    if (result.rowCount === 0) {
      res.status(404).json({ message: 'Proveedor o material no encontrado' });
    } else {
      res.status(200).json({ message: 'Material(es) del proveedor cambiado con éxito' });
    }
  } catch (err) {
    next(err);
  }
};

const deleteProveedor = async (req, res, next) => {
  try {
    const { prove_cod } = req.body;

    const proveResult = await pool.query(`
      CALL delete_proveedor($1);
    `, [prove_cod]);
    res.status(200).send({ message: 'Proveedor eliminado exitosamente' });
    
  } catch (err) {
    next(err);
  }
};

module.exports = { getProveedor, getMateriales, postProveedor, putProveedor, deleteProveedor };