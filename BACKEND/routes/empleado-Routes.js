const express = require('express');
const router = express.Router();

const { getEmpleado, postEmpleado, putEmpleado, deleteEmpleado } = require('../controllers/empleado-Controller');

router.get('/', getEmpleado); // Obtener empleado
router.post('/', postEmpleado); // Crear empleado
router.post('/', putEmpleado); // Modificar empleado
router.delete('/', deleteEmpleado); // Eliminar empleado

module.exports = router;