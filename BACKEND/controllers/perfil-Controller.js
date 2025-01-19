const pool = require('../config/db');

const getData = async (req, res, next) => {
  try {
    const { tipopersona, id } = req.params;
    let result;
    if(tipopersona === 'proveedor'){
      result = await pool.query(` SELECT * FROM get_proveedor($1) `, [id]);
    } else {
      result = await pool.query(` SELECT * FROM get_persona($1) `, [id]);
    }
    return res.status(200).json(result.rows);
  } catch (err) {
    next(err);
  }
};

module.exports = { getData };