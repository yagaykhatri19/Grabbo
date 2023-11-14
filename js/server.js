// const { db } = require("./connection.js");
// const express = require("express");
// const mysql = require("mysql");
import mysql from "mysql2";

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "mysql@12345",
  database: "grabbo",
});

// import { db } from "./connection.js";
import express from "express";
import cors from "cors";

const app = express();
app.use(cors());
app.use(express.json());
const port = 8800;
// const allowedOrigin = "http://localhost:62767/addProduct.html";

// // Configure CORS
// app.use(
//   cors({
//     origin: allowedOrigin,
//     methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
//     credentials: true, // Enable credentials (cookies, authorization headers, etc.)
//   })
// );

const username = "admin";
const password = "admin";

// Connect to the database
db.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL database:", err);
    return;
  }
  console.log("Connected to MySQL database");
});

app.get("/test", function (req, res) {
  const category = "snacks";
  try {
    // Example query for the "beverages" table
    const query = `SELECT * FROM ${category}`;

    // Execute the query
    db.query(query, (err, results) => {
      if (err) {
        console.error("Error executing query:", err);
        // Send a more informative error response
        res.status(500).json({ error: "Error executing database query" });
        return;
      }

      // Send the results as JSON
      res.json(results);
    });
  } catch (error) {
    console.error("Internal server error:", error);
    // Send a more informative error response
    res.status(500).json({ error: "Internal Server Error" });
  }
});
app.post("/addProduct", function (req, res) {
  const id = req.body.id;
  const name = req.body.name;
  const category = req.body.category;
  const price = req.body.price;
  const productClass = req.body.class;
  const productSubclass = req.body.subclass;
  const quantity = req.body.quantity;
  const image = req.body.image;
  const values = [
    id,
    name,
    price,
    quantity,
    productClass,
    productSubclass,
    image,
  ];
  try {
    const sql = `insert into ${category}(id,name,price,quantity,class,sub_class,url) Values(?,?,?,?,?,?,?)`;
    db.query(sql, values, function (err, result) {
      if (err) res.status(500).send(err.message);
      res.status(200).send("Data added successfully");
    });
  } catch (error) {
    console.error("Internal server error:", error);
    // Send a more informative error response
    res.status(500).json({ error: "Internal Server Error" });
  }
});

app.post("/updateProductQuantity", function (req, res) {
  const category = req.body.category;

  try {
    const sql = `Select id,name,price,quantity from ${category}`;
    db.query(sql, values, function (err, result) {
      if (err) res.status(500).send(err.message);
      res.send("Data added successfully");
    });
  } catch (error) {
    console.error("Internal server error:", error);
    // Send a more informative error response
    res.status(500).json({ error: "Internal Server Error" });
  }
});

app.get("/student/products/:category", function (req, res) {
  const category = req.params.category;
  try {
    // Example query for the "beverages" table
    const sql = `Select name,price,quantity,url from ??`;
    const value = [category];
    // const formattedSQL = db.format(sql, value);
    // console.log("Executing SQL query:", formattedSQL);

    // Execute the query
    db.query(sql, value, (err, results) => {
      if (err) {
        console.error("Error executing query:", err);
        // Send a more informative error response
        res.status(500).json({ error: "Error executing database query" });
        return;
      }

      // Send the results as JSON
      res.json(results);
    });
  } catch (error) {
    console.error("Internal server error:", error);
    // Send a more informative error response
    res.status(500).json({ error: "Internal Server Error" });
  }
});

app.get("/login", function (req, res) {
  const userUsername = req.body.username;
  const userPassword = req.body.password;
  res.json(userUsername, userPassword);
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
