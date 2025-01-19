const express = require('express');
const router = express.Router();

const { getRol } = require('../controllers/rol-Controller');

router.get('/', getRol); // Leer rol

module.exports = router;