const express = require('express');
const router = express.Router();

const { postCompra, getTasaCambio } = require('../controllers/compra-Controller');

router.post('/', postCompra); // Realizar compra
router.get('/', getTasaCambio); // Obtener tasa de cambio

module.exports = router;