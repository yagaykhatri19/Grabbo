// const mysql = require("mysql");
import mysql from "mysql2";

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "mysql@12345",
  database: "grabbo",
});

// module.exports = { db };
export { db };
