const express = require('express');
const router = express.Router();

//const { get15, get16, get17, get18, get19, get20, get21 } = require('../controllers/reporte-Controller');
const { get18 } = require('../controllers/reporte-Controller');

// router.get('/15', get15);
// router.get('/16', get16);
// router.get('/17', get17);
router.get('/18', get18);
// router.get('/19', get19);
// router.get('/20', get20);
// router.get('/21', get21);

module.exports = router;