# Utilisez une image Node.js comme image de base
FROM node:14

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers du backend dans le conteneur
COPY . .

# Installer les dépendances
RUN npm install
RUN npm install pm2 -g

# Exposez le port sur lequel le backend écoute (par exemple, 3000)
EXPOSE 3000

# Définir des variables d'environnement pour la configuration de la base de données MariaDB
# ENV DB_HOST=mariadb-host
# ENV DB_PORT=3306
# ENV DB_DATABASE=charmettes
# ENV DB_USER=root
# ENV DB_PASSWORD=charmettes

# Commande pour démarrer le backend
# CMD ["npm","run", "server"]
CMD ["pm2-runtime", "server.js"]

