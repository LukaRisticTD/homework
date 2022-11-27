import { createRequire } from "module";
const require = createRequire(import.meta.url)
export const { Sequelize, DataTypes, Op } = require('sequelize');

export const sequelize = new Sequelize(
    "homework-db",
    "root",
    "Yvdv217w",
    {
    host: "localhost",
    dialect: 'mysql'
});

try {
  await sequelize.authenticate();
  console.log('Connection has been established successfully.');
} catch (error) {
  console.error('Unable to connect to the database:', error);

}
