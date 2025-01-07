const express = require('express');
const router = express.Router();

const { getProveedor, getMateriales, putProveedor, postProveedor } = require('../controllers/proveedor-Controller');

router.get('/', getProveedor); // Obtener proveedores
router.get('/inventario', getMateriales); // Obtener inventario de proveedores
router.put('/', putProveedor); // Modificar proveedores
router.post('/', postProveedor); // Crear proveedores
//router.delete('/', deleteProveedor); // Eliminar proveedores

module.exports = router;