FROM nginx:latest

# Crea el directorio donde se colocarán los archivos del juego
RUN mkdir -p /usr/share/nginx/html

# Copia los archivos exportados de WebGL a la carpeta predeterminada de Nginx
COPY ./build/ /usr/share/nginx/html/

# Exponer el puerto 80 para el acceso web
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
