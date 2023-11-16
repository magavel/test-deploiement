FROM node:18-alpine as build
WORKDIR /usr/local/app
COPY ./ /usr/local/app/
COPY package*.json ./
RUN npm install -g npm@latest
RUN npm install --force
RUN npm run build --prod

FROM nginx:1.21.6
# ---- We set our proxy configuration in the following line ----
COPY production.nginx.proxy.conf /etc/nginx/conf.d/default.conf
COPY --from=build /usr/local/app/dist/front /usr/share/nginx/html

EXPOSE 80