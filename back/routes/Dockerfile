# Utilisez l'image Node.js officielle
FROM node:14

# Créez un répertoire de travail
WORKDIR /app

# Copiez les fichiers du projet dans le conteneur
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste des fichiers du projet
COPY . .

# Exposez le port sur lequel votre application Node.js écoute
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]
