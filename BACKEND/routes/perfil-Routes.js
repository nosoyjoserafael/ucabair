const express = require('express');
const router = express.Router();

const { getData } = require('../controllers/perfil-Controller');

router.get('/:tipopersona/:id', getData);

module.exports = router;