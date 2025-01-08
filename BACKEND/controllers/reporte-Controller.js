const pool = require('../config/db');

const get18 = async (req, res, next) => {
    try {
        
        res.json(result.rows);
    } catch (err) {
        next(err);
    }
};

module.exports = { get18 };