# Proyecto web (contenedor Nginx)

Instrucciones rápidas para construir y ejecutar la imagen Docker localmente.

Construir la imagen:

```bash
docker build -t proyecto_web:latest .
```

Ejecutar el contenedor (mapea puerto 80 del contenedor al 8080 del host):

```bash
docker run --rm -p 8080:80 proyecto_web:latest
```

Abrir en el navegador: http://localhost:8080

Notas:
- Esta imagen sirve los archivos estáticos contenidos en el directorio del proyecto.
- Si quieres usar otro puerto, cambia `-p 8080:80` por el mapeo deseado.