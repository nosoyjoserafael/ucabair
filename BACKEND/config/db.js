const { Pool } = require('pg');

const pool = new Pool({
  user: process.env.DB_USER || 'grupo_rsm', // El usuario de la base de datos
  host: process.env.DB_HOST || 'labs-dbservices01.ucab.edu.ve', // La dirección de la base de datos
  database: process.env.DB_NAME || 'grupo_rsm', // El nombre de la base de datos
  password: process.env.DB_PASSWORD || '123456',   // La contraseña del usuario
  port: process.env.DB_PORT || 5432, // El puerto de la base de datos
});

module.exports = pool;