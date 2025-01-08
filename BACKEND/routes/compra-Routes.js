const express = require('express');
const router = express.Router();

const { postCompra } = require('../controllers/compra-Controller');

router.get('/', postCompra); // Realizar compra

module.exports = router;