const express = require('express');
const cors = require('cors');
const jsreport = require('jsreport')();
const app = express();
const port = process.env.PORT || 3000;
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

// Configuración de jsreport
jsreport.init().then(() => {
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
  
  app.listen(port, () => {
    console.log(`Servidor corriendo en el puerto ${port}`);
  });
  
}).catch((e) => {
  console.error('Exploto toda verga', e);
  process.exit(1);
});
