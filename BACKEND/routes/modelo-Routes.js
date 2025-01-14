const express = require('express');
const router = express.Router();

const { getModelo, getCarac, putModelo, postModelo, postCompra, deleteModelo } = require('../controllers/modelo-Controller');

router.get('/', getModelo); // Obtener modelos
router.get('/caracteristica', getCarac); // Obtener caracteristicas
router.put('/', putModelo); // Modificar modelo
router.post('/', postModelo); // Crear modelo
router.post('/comprar', postCompra); // Comprar modelo (y empezar construcción)
router.delete('/', deleteModelo); // Eliminar modelo

module.exports = router;