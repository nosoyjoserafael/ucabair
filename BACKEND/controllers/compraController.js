const path = require('path');
const fs = require('fs');
const jwt = require('jsonwebtoken');

const filePath = path.join(__dirname, '../data/ordenesDeCompra.json');
const secretKey = '12345';

const getOrdenesDeCompra = (req, res) => {
    try {
        const data = fs.readFileSync(filePath, 'utf8');
        res.json(JSON.parse(data));
    } catch (error) {
        res.status(500).json({ error: 'Error al leer el archivo de aviones' });
    }
};

const addOrdenDeCompra = (req, res) => {
    try {
        const data = fs.readFileSync(filePath, 'utf8');
        const ordenesDeCompra = JSON.parse(data);
        
        const token = req.body.token;
        const decodedToken = jwt.verify(token, secretKey); //decodifica el token del usuario para poder obtener su id
        const nuevaOrdenDeCompra = {
            avionId: req.body.avionId,
            usuarioId: decodedToken.id,
            fecha: new Date().toISOString().split('T')[0],
            estado: 'pendiente'   
        };

        ordenesDeCompra.push(nuevaOrdenDeCompra);
        fs.writeFileSync(filePath, JSON.stringify(ordenesDeCompra, null, 2), 'utf8');
        res.status(201).json(nuevaOrdenDeCompra);
    }
    catch (error) {
        res.status(500).json({ error: 'Error al escribir en el archivo de aviones' });
    }
}

module.exports = {
    addOrdenDeCompra
};