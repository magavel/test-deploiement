// routes/posts.js

const express = require('express');
const router = express.Router();
const { v4: uuidv4 } = require('uuid');

// Route GET pour les "posts"
router.get('/', (req, res) => {
    const db = req.db;
    db.query('SELECT * FROM posts', (err, results) => {
        if (err) {
            console.error('Erreur lors de la récupération des posts:', err);
            res.status(500).json({ error: 'Erreur lors de la récupération des posts' });
            return;
        }
        res.json(results);
    });
});

// Route POST pour créer un "post"
router.post('/', (req, res) => {
    const db = req.db;
/*    console.log(req.body)
    const { title, description, imageUrl } = req.body;
    if (!title || !description || !imageUrl) {
        res.status(400).json({ error: 'Tous les champs sont obligatoires' });
        return;
    }*/

    //const post = { title, description, imageUrl };
    const id =uuidv4();
    const post = {id, title:'titre 2eme post', description:'description 2eme post', imageUrl:'/gggg/54' };
    db.query('INSERT INTO posts SET ?', post, (err, result) => {
        if (err) {
            console.error('Erreur lors de la création du post:', err);
            res.status(500).json({ error: 'Erreur lors de la création du post' });
            return;
        }
        res.json({ message: 'Post créé avec succès', id });
    });
});

module.exports = router;
