// routes/prices.js

const express = require('express');
const router = express.Router();


// Route GET pour les "prices"
router.get('/', (req, res) => {
    const db = req.db;
    db.query('SELECT * FROM prices', (err, results) => {
        if (err) {
            console.error('Erreur lors de la récupération des prices:', err);
            res.status(500).json({ error: 'Erreur lors de la récupération des prices' });
            return;
        }
        res.json(results);
    });
});

module.exports = router;
