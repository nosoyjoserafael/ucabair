const express = require('express');
const router = express.Router();

const { getEquipo, postEquipo, putEquipo, deleteEquipo } = require('../controllers/equipo-Controller');

router.get('/', getEquipo); // Obtener modelos
router.post('/', postEquipo); // Crear modelo
router.put('/', putEquipo); // Modificar modelo
router.delete('/', deleteEquipo); // Eliminar modelo

module.exports = router;