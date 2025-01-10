const express = require('express');
const cors = require('cors');
const path = require('path');

const jsreport = require('jsreport')({
  chrome: {
    launchOptions: {
      args: ['--no-sandbox', '--disable-setuid-sandbox']
    },
    strategy: 'dedicated-process' // Reutilizar la misma instancia de Chromium
  },
  extensions: {
    'express': {
      enabled: true, // Habilitar el servidor HTTP de jsreport
      appPath: "/jsreport", // Ruta base para jsreport
      port: 5488 // Puerto para el servidor HTTP de jsreport
    }
  }
});
const jsreportReady = jsreport.init();

const app = express();
const port = 3000;

const errorHandler = require('./middlewares/errorHandler');
const user_dataRoutes = require('./routes/usuario-Routes');
const add_user_dataRoutes = require('./routes/add_user-Routes');
const modelo_dataRoutes = require('./routes/modelo-Routes');
const tipo_pruebaRoutes = require('./routes/tipo_prueba-Routes');
const proveedor_dataRoutes = require('./routes/proveedor-Routes');
const empleado_dataRoutes = require('./routes/empleado-Routes');
const rol_dataRoutes = require('./routes/rol-Routes');
const compra_dataRoutes = require('./routes/compra-Routes');

// Middleware para habilitar CORS
app.use(cors());

// Middleware para parsear JSON
app.use(express.json());

// Servir archivos estáticos desde la carpeta 'public'
app.use(express.static(path.join(__dirname, 'public')));

// Rutas
app.use('/usuario', user_dataRoutes);
app.use('/adduser', add_user_dataRoutes);
app.use('/modelo', modelo_dataRoutes);
app.use('/tipoPrueba', tipo_pruebaRoutes);
app.use('/proveedor', proveedor_dataRoutes);
app.use('/empleado', empleado_dataRoutes);
app.use('/rol', rol_dataRoutes);
app.use('/compra', compra_dataRoutes);

// Middleware para manejar errores
app.use(errorHandler);

jsreportReady.then(() => {
  module.exports = { jsreport, jsreportReady };
  const reporte_dataRoutes = require('./routes/reporte-Routes'); // Importar las rutas de reporte
  app.use('/reporte', reporte_dataRoutes); // Usar las rutas de reporte

  app.listen(port, () => {
    console.log(`Servidor corriendo en el puerto ${port}`);
    console.log(`jsreport corriendo en el puerto 5488`);
  });
}).catch((e) => {
  console.error('Error al inicializar jsreport', e);
  process.exit(1);
});
