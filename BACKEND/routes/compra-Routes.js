const express = require('express');
const router = express.Router();

const { postCompra, getTasaCambio } = require('../controllers/compra-Controller');

router.get('/', getTasaCambio); // Obtener tasa de cambio
router.post('/', postCompra); // Realizar compra

module.exports = router;