const express = require('express');
const router = express.Router();

const { get15, get16, get17, get18, get20, get21, get5, get6, get7, get8, get9, get11, get12, get13 } = require('../controllers/reporte-Controller');

router.get('/15', get15);
router.get('/16', get16);
router.get('/17', get17);
router.get('/18', get18);
// router.get('/19', get19);
router.get('/20', get20);
router.get('/21', get21);
router.get('/5', get5);
router.get('/6', get6);
router.get('/7', get7);
router.get('/8', get8);
router.get('/9', get9);
router.get('/11', get11);
router.get('/12', get12);
router.get('/13', get13);

module.exports = router;