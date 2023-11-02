# Utilisez l'image NGINX officielle pour servir l'application Angular
FROM nginx:latest
RUN echo "debut"

# Copiez les fichiers de l'application Angular dans le répertoire de travail NGINX
COPY dist/front /usr/share/nginx/html
RUN echo "copie fichiers front"

# Exposez le port 80
EXPOSE 80
