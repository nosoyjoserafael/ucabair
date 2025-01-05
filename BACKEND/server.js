const express = require('express');
const cors = require('cors'); // Importar el paquete cors
const app = express();
const port = process.env.PORT || 3000;
const tb_dataRoutes = require('./routes/tabla_prueba-Routes');
const user_dataRoutes = require('./routes/usuario-Routes');
const errorHandler = require('./middlewares/errorHandler');

// Middleware para habilitar CORS
app.use(cors());

// Middleware para parsear JSON
app.use(express.json());

// Rutas
app.use('/tablaPrueba', tb_dataRoutes);
app.use('/usuario', user_dataRoutes);

// Middleware para manejar errores
app.use(errorHandler);

app.listen(port, () => {
  console.log(`Servidor corriendo en el puerto ${port}`);
});