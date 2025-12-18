FROM nginx:stable-alpine
LABEL maintainer="proyecto_web"

# Limpiar contenido estático por defecto (asegura un directorio limpio)
RUN rm -rf /usr/share/nginx/html/*

# Copiar configuración personalizada de nginx
COPY default.conf /etc/nginx/conf.d/default.conf

# Copiar archivos del sitio
COPY . /usr/share/nginx/html

# Ajustar permisos de forma conservadora
RUN chmod -R 755 /usr/share/nginx/html || true

EXPOSE 80

# Ejecutar nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
