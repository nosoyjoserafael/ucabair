const express = require('express');
const router = express.Router();

const { login, getUsuariosPersona } = require('../controllers/usuario-Controller');

router.post('/', login);
router.get('/', getUsuariosPersona);

module.exports = router;