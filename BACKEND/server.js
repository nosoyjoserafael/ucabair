const express = require('express');
const cors = require('cors');
const app = express();
const port = process.env.PORT || 3000;
//const tb_dataRoutes = require('./routes/tabla_prueba-Routes');
const errorHandler = require('./middlewares/errorHandler');
const user_dataRoutes = require('./routes/usuario-Routes');
const add_user_dataRoutes = require('./routes/add_user-Routes');
const modelo_dataRoutes = require('./routes/modelo-Routes');
const tipo_pruebaRoutes = require('./routes/tipo_prueba-Routes');
const proveedor_dataRoutes = require('./routes/proveedor-Routes');
const empleado_dataRoutes = require('./routes/empleado-Routes');

// Middleware para habilitar CORS
app.use(cors());

// Middleware para parsear JSON
app.use(express.json());

// Rutas
//app.use('/tablaPrueba', tb_dataRoutes);
app.use('/usuario', user_dataRoutes);
app.use('/adduser', add_user_dataRoutes);
app.use('/modelo', modelo_dataRoutes);
app.use('/tipoPrueba', tipo_pruebaRoutes);
app.use('/proveedor', proveedor_dataRoutes);
app.use('/empleado', empleado_dataRoutes);

// Middleware para manejar errores
app.use(errorHandler);

app.listen(port, () => {
  console.log(`Servidor corriendo en el puerto ${port}`);
});