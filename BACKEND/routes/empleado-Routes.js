const express = require('express');
const router = express.Router();

const { getEmpleado, postEmpleado } = require('../controllers/empleado-Controller');

router.get('/', getEmpleado); // Obtener proveedores
router.post('/', postEmpleado); // Crear proveedores
//router.delete('/', deleteProveedor); // Eliminar proveedores

module.exports = router;