

const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const config = require('./config/config');

const app = express();

console.log('config db', config);

const db = mysql.createConnection(config.database);
app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});


db.connect(err => {
    if (err) {
        console.error('----- Erreur de rrrrrrrrrrrr connexion à la base de données:', err);
        throw err;
    }
    console.log('Connecté à la base de données MariaDB');
});

app.use(bodyParser.json());

// Middleware pour partager la connexion à la base de données avec les routes
app.use((req, res, next) => {
    req.db = db;
    next();
});

// Routes
const postsRoutes = require('./routes/posts.routes');
const pricesRoutes = require('./routes/prices.routes');

app.use('/posts', postsRoutes);
app.use('/prices', pricesRoutes);

module.exports = app;
