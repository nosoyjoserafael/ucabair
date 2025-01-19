const express = require('express');
const router = express.Router();

const { getTPmaterial } = require('../controllers/tipo_material-Controller');

router.get('/', getTPmaterial); // Obtener tipo de materiales

module.exports = router;