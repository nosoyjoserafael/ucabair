const pool = require('../config/db');


const getAsistencia = async (req, res, next) => {
    try {
        const result = await pool.query('SELECT * FROM get_asistencias()');
        res.json(result.rows);
    } catch (err) {
        next(err);
    }
};

const getAsistenciaParticular = async (req, res, next) => {
    const { id, nombre } = req.params;
    try {
      const result = await pool.query(`
        SELECT * FROM get_asistencia_particular($1, $2)
      `, [id, nombre]);
  
      return res.json(result.rows);
    } catch (err) {
      next(err);
    }
};

const getHorasExtra = async (req, res, next) => {
  const { usuario } = req.params;
  try {
    const result = await pool.query(`
      SELECT * FROM calcular_horas_extra($1)
    `, [usuario]);

    return res.json(result.rows);
  } catch (err) {
    next(err);
  }
};

const postAsistencia = async (req, res, next) => {
  try {
    const {
      per_cod, usuario, fecha, horaEntrada, horaSalida
    } = req.body;

    const proveResult = await pool.query(`
      CALL post_asistencia($1, $2, $3, $4, $5);
    `, [fecha, horaEntrada, horaSalida, usuario, per_cod]);

    res.status(200).json({ message: 'Asistencia registrada con éxito' });
  } catch (err) {
    next(err);
  }
};

const putAsistencia = async (req, res, next) => {
  try {
    const { ass_cod, fecha, horaEntrada, horaSalida } = req.body;

    const result = await pool.query(`
      CALL put_asistencia($1, $2, $3, $4);
    `, [ass_cod, fecha, horaEntrada, horaSalida]);

    if (result.rowCount === 0) {
      res.status(404).json({ message: 'Asistencia no encontrada' });
    } else {
      res.status(200).json({ message: 'Asistencia del empleado cambiada con éxito' });
    }
  } catch (err) {
    next(err);
  }
};

const deleteAsistencia = async (req, res, next) => {
  try {
    const { ass_cod } = req.body;

    const proveResult = await pool.query(`
      CALL delete_asistencia($1);
    `, [ass_cod]);
    res.status(200).send({ message: 'Asistencia eliminada exitosamente' });
    
  } catch (err) {
    next(err);
  }
};


module.exports = { getAsistencia, getAsistenciaParticular, getHorasExtra, postAsistencia, putAsistencia, deleteAsistencia };
