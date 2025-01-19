const express = require('express');
const router = express.Router();

const { getPrueba, putPrueba, postPrueba, deletePrueba } = require('../controllers/prueba-Controller');

router.get('/', getPrueba); // Obtener tipos de prueba
router.put('/', putPrueba); // Modificar tipos de prueba
router.post('/', postPrueba); // Crear tipos de prueba
router.delete('/', deletePrueba); // Eliminar tipos de prueba

module.exports = router;