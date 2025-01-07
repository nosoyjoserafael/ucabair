const pool = require('../config/db');

const getEmpleado = async (req, res, next) => {
  try {
    const result = await pool.query('SELECT * FROM public."Personal"');
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const postEmpleado = async (req, res, next) => {
  try {
    const { Per_nombre, Per_ci, Per_Per_apellido, Per_Per_experiencia, fk_lugar, Per_dir } = req.body;
    const query = `
      INSERT INTO public."Personal" 
      ("Per_cod", "Per_nombre", "Per_ci", "Per_Per_apellido", "Per_Per_experiencia", "fk_lugar", "Per_dir", "Per_fecha_ini") 
      VALUES 
      (nextval('Per_cod_seq'), $1, $2, $3, $4, $5, $6, current_date)
    `;
    const values = [Per_nombre, Per_ci, Per_Per_apellido, Per_Per_experiencia, fk_lugar, Per_dir];
    await pool.query(query, values);
    res.status(201).send('Empleado creado exitosamente');
  } catch (err) {
    next(err);
  }
};

module.exports = { getEmpleado, postEmpleado };