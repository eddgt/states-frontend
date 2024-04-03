# Etapa de producción con Nginx
FROM nginx:stable-alpine

# Copia la parte compilada (directorio dist) de la aplicación Vue.js a la imagen
COPY ./dist /usr/share/nginx/html

# Configura Nginx según tus necesidades
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
