
CREATE DATABASE IF NOT EXISTS charmettes;
USE charmettes;

CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    imageUrl TEXT,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO posts (title, content, imageUrl, createdAt) VALUES ('Mon SUPER -------- premier post', 'Ceci est le contenu de mon premier post.', 'imageUrl',NOW());
INSERT INTO posts (title, content, imageUrl, createdAt) VALUES ('Mon SUPER -------- premier post', 'Ceci est le contenu de mon premier post.', 'imageUrl',NOW());
INSERT INTO posts (title, content, imageUrl, createdAt) VALUES ('Mon SUPER -------- premier post', 'Ceci est le contenu de mon premier post.', 'imageUrl',NOW());
INSERT INTO posts (title, content, imageUrl, createdAt) VALUES ('Mon SUPER -------- premier post', 'Ceci est le contenu de mon premier post.', 'imageUrl',NOW());
INSERT INTO posts (title, content, imageUrl, createdAt) VALUES ('Mon SUPER -------- premier post', 'Ceci est le contenu de mon premier post.', 'imageUrl',NOW());
INSERT INTO posts (title, content, imageUrl, createdAt) VALUES ('Mon SUPER -------- premier post', 'Ceci est le contenu de mon premier post.', 'imageUrl',NOW());
INSERT INTO posts (title, content, imageUrl, createdAt) VALUES ('Mon SUPER -------- premier post', 'Ceci est le contenu de mon premier post.', 'imageUrl',NOW());
INSERT INTO posts (title, content, imageUrl, createdAt) VALUES ('Mon SUPER -------- premier post', 'Ceci est le contenu de mon premier post.', 'imageUrl',NOW());
INSERT INTO posts (title, content, imageUrl, createdAt) VALUES ('Mon SUPER -------- premier post', 'Ceci est le contenu de mon premier post.', 'imageUrl',NOW());





-- Créer la table 'price'
CREATE TABLE prices (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    price DECIMAL(10, 2),
    createdAt DATETIME
);

-- Insérer des données dans la table 'price'
INSERT INTO prices (id, title, price, createdAt) VALUES (1, 'Produit 1', 19.99, NOW());
INSERT INTO prices (id, title, price, createdAt) VALUES (2, 'Produit 1', 19.99, NOW());
INSERT INTO prices (id, title, price, createdAt) VALUES (3, 'Produit 1', 19.99, NOW());
INSERT INTO prices (id, title, price, createdAt) VALUES (4, 'Produit 1', 19.99, NOW());


