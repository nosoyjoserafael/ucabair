const pool = require('../config/db');
const puppeteer = require('puppeteer');
const jsreport = require('jsreport');

const get18 = async (req, res, next) => {
    try {
        resultFila = await pool.query('SELECT * FROM get_modelo()');
        const data = {
            logoUrl: 'https://example.com/logo.png',
            formatDate: new Date().toLocaleDateString(),
            // fila: [
            //     { nombre: 'Modelo A', prueba: 'Prueba 1', cargo: 'Responsable 1', tiempo: 5 },
            //     { nombre: 'Modelo B', prueba: 'Prueba 2', cargo: 'Responsable 2', tiempo: 3 },
            //     // Agrega aquí más filas según sea necesario
            // ]
            fila : resultFila.rows
        };

        const report = await jsreport.render({
            template: {
                name: 'reporte18' // Nombre del archivo de plantilla en la carpeta data
            },
            data: data
        });

        res.contentType('application/pdf');
        res.send(report.content);
    } catch (err) {
        next(err);
    }
};

module.exports = { get18 };