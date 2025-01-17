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

const get17 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM get_reporte17()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'reporte17');

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

const get20 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM get_reporte20()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'reporte20');

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

const get5 = async (req, res, next) => {
  try {
    const resultFila = await pool.query(' SELECT * FROM ubicacion_estatus_piezas() ');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'ubicacionEstatusPiezas');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

const get6 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM mejores_10_clientes()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'reporte6');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

const get7 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM equipo_mas_eficiente()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'reporte7');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

const get8 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM ala_mas_usada()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'alaMasUsada');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

const get9 = async (req, res, next) => {
  try {
    //const resultFila = await pool.query(` SELECT * FROM caracteristicas_modelos() `);
    //console.log(resultFila.rows);
    
    let modelos = await pool.query(` SELECT * FROM caracteristicas_modelos(testeo()) `);
    let carac = modelos.rows;
    let columnas = [];
    
    for (let i = 0; i < carac.length; i++){

      let nuevoObjeto = {};

      for (let key in carac[i].resultado) {
        if (carac[i].resultado.hasOwnProperty(key)) {
          let nuevaKey = key.lastIndexOf('') !== -1 ? key.substring(0, key.lastIndexOf('')) : key;

          nuevoObjeto[nuevaKey] = carac[i].resultado[key];

          if (i==0)columnas.push({columna : nuevaKey});
        }
      }
      carac[i].resultado = nuevoObjeto;
    }

    console.log(carac);
    console.log(columnas);

    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila : carac,
      columna : columnas
    };

    const pdfBuffer = await generatePdf(data, 'caracteristicasModelos');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

const get10 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM get_rechazados()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'getRechazados');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

const get11 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM inventario_detallado_por_mes()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'invetarioDetalladoPorMes');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

const get12 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM aviones_mas_rentables()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'avionesMasRentables');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

const get13 = async (req, res, next) => {
  try {
    const resultFila = await pool.query('SELECT * FROM promedio_produccion_sede()');
    const data = {
      logoUrl : logo,
      formatDate: new Date().toLocaleDateString(),
      fila: resultFila.rows
    };

    const pdfBuffer = await generatePdf(data, 'promedioProduccionSede');

    res.contentType('application/pdf');
    res.send(pdfBuffer);
  } catch (err) {
    next(err);
  }
};

module.exports = { get15, get16, get17, get18, get20, get21, get5, get6, get7, get8, get9, get10, get11, get12, get13 };