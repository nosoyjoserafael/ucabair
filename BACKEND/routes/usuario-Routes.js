const express = require('express');
const router = express.Router();

const { login, getUsuariosPersona, putUserRol } = require('../controllers/usuario-Controller');

router.post('/', login);
router.get('/', getUsuariosPersona);
router.get('/', putUserRol); // Actualizar rol

module.exports = router;