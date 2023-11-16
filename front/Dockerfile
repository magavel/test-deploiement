FROM node:18-alpine as build
WORKDIR /usr/local/app
COPY ./ /usr/local/app/
COPY package*.json ./
RUN npm install -g npm@latest
RUN npm install --force
RUN npm run build --prod


# Utilisez l'image NGINX officielle pour servir l'application Angular
FROM nginx:latest
# Copiez les fichiers de l'application Angular dans le répertoire de travail NGINX
# COPY production.nginx.proxy.conf /etc/nginx/conf.d/default.conf
COPY --from=build /usr/local/app/dist/front /usr/share/nginx/html
RUN echo "copie fichiers front"

# Exposez le port 80
EXPOSE 80
