const pool = require('../config/db');
const fs = require('fs');
const path = require('path');

const filePath = path.join(__dirname, '../data/roles.json');

const getRoles = (req, res) => { //hay que modificar para que los roles se obtengan de la base de datos
    try {
        const data = fs.readFileSync(filePath, 'utf8');
        res.json(JSON.parse(data));
    } catch (error) {
        res.status(500).json({ error: 'Error al leer el archivo de roles' });
    }
}

const crearRol = (req, res) => { 
    //En el archivo solo se guardan los nombres de los roles
    //A la base de datos se le pasan los permisos formales del rol

    try {
        const roles = JSON.parse(fs.readFileSync(filePath, 'utf8'));
        console.log(req.body);
        const nuevoRol = req.body;
        roles.push(nuevoRol);
        fs.writeFileSync(filePath, JSON.stringify(roles, null, 2), 'utf8');
        res.status(201).json(nuevoRol);
    } catch (error) {
        res.status(500).json({ error: 'Error al escribir en el archivo de roles' });
    }
}

module.exports = { getRoles, crearRol };