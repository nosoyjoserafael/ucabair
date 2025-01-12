const pool = require('../config/db');
const { jsreport, jsreportReady } = require('../server'); // Importar jsreport y jsreportReady desde server.js

const logo = `https://i.pinimg.com/736x/ac/66/fd/ac66fdbcf17e7c77173cf01c4dbb1cfc.jpg`;

async function generatePdf(data, template) {
  await jsreportReady; // Asegurarse de que jsreport esté listo
  const report = await jsreport.render({
    template: {
      name: template, // Nombre del template en la carpeta data
      engine: 'handlebars',
      recipe: 'chrome-pdf',
    },
    data: data
  });
  return report.content;
}

const get15 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM get_reporte15()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'reporte15');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

const get16 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM get_reporte16()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'reporte16');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

const get18 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM get_reporte18()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'reporte18');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

const get21 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM get_reporte21()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'reporte21');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

module.exports = { get15, get16, get18, get21 };