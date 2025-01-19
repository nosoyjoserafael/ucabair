const pool = require('../config/db');

const getEmpleado = async (req, res, next) => {
  try {
    const result = await pool.query('SELECT * FROM public."Personal"');
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const getNomina = async (req, res, next) => {
  const { idPersonal, fechaInicio, fechaFin } = req.params;
  try {
    const result = await pool.query('SELECT * FROM calcular_nomina($1, $2, $3)', [idPersonal, fechaInicio, fechaFin]);
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const postEmpleado = async (req, res, next) => {
  try {
    const { Per_nombre, Per_ci, Per_Per_apellido, Per_Per_experiencia, fk_lugar, Per_dir, Per_fechaini } = req.body;
    
    const proveResult = await client.query(`
      CALL post_personal($1, $2, $3, $4, $5, $6, $7);
    `, [Per_nombre, Per_ci, Per_Per_apellido, Per_Per_experiencia, fk_lugar, Per_dir, Per_fechaini]);
    
    res.status(201).send('Empleado creado exitosamente');
  } catch (err) {
    next(err);
  }
};

const putEmpleado = async (req, res, next) => {
  try {
    const { Per_cod, Per_nombre, Per_ci, Per_Per_apellido, Per_Per_experiencia, fk_lugar, Per_dir, Per_fechaini } = req.body;
    
    const proveResult = await client.query(`
      CALL put_personal($1, $2, $3, $4, $5, $6, $7, $8);
    `, [Per_cod, Per_nombre, Per_ci, Per_Per_apellido, Per_Per_experiencia, fk_lugar, Per_dir, Per_fechaini]);
    
    res.status(201).send('Empleado modificado exitosamente');
  } catch (err) {
    next(err);
  }
};

const deleteEmpleado = async (req, res, next) => {
  try {
    const { Per_cod } = req.body;
    
    const proveResult = await client.query(`
      CALL delete_personal($1);
    `, [Per_cod]);
    
    res.status(201).send('Empleado eliminado exitosamente');
  } catch (err) {
    next(err);
  }
};

module.exports = { getEmpleado, getNomina, postEmpleado, putEmpleado, deleteEmpleado };