const express = require('express');
const router = express.Router();

const { getTPprueba, putTPprueba, postTPprueba, deleteTPprueba } = require('../controllers/tipo_prueba-Controller');

router.get('/', getTPprueba); // Obtener tipos de prueba
router.put('/', putTPprueba); // Modificar tipos de prueba
router.post('/', postTPprueba); // Crear tipos de prueba
router.delete('/', deleteTPprueba); // Eliminar tipos de prueba

module.exports = router;