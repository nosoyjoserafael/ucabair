const express = require('express');
const router = express.Router();

const { getAsistencia, getAsistenciaParticular, getHorasExtra, postAsistencia, putAsistencia, deleteAsistencia } = require('../controllers/asistencia-Controller');

router.get('/', getAsistencia); // Obtener asistencias
router.get('/particular/:id?/:nombre?', getAsistenciaParticular); // Obtener asistencia particular
router.get('/hextra/:usuario', getHorasExtra); // Calcular horas extra de un empleado
router.post('/', postAsistencia); // Registrar asistencia
router.put('/', putAsistencia); // Modificar asistencia
router.delete('/', deleteAsistencia); // Eliminar modelo

module.exports = router;