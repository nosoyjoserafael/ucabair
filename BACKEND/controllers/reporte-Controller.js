const pool = require('../config/db');
const { jsreport, jsreportReady } = require('../server'); // Importar jsreport y jsreportReady desde server.js

async function generatePdf(data) {
  await jsreportReady; // Asegurarse de que jsreport esté listo
  const report = await jsreport.render({
    template: {
      name: 'reporte18', // Nombre del template en la carpeta data
      engine: 'handlebars',
      recipe: 'chrome-pdf',
    },
    data: data
  });
  return report.content;
}

const get18 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM get_reporte18()');
    console.log(resultFila.rows);
    const data = {
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data);

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

module.exports = { get18 };