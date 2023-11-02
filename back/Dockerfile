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


# Commande pour démarrer le backend
# CMD ["npm","run", "server"]
CMD ["pm2-runtime", "server.js"]

