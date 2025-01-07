const express = require('express');
const router = express.Router();

const { createData } = require('../controllers/usuario-Controller');

router.post('/', createData); // Crear datos

module.exports = router;