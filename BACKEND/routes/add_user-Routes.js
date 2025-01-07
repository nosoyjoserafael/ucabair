const express = require('express');
const router = express.Router();

const { addPerson } = require('../controllers/add_user-Controller');

router.post('/', addPerson); // Crear datos

module.exports = router;