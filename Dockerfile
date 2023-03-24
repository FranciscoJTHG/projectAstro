#Imagen base
FROM node:lts-alpine

#Creamos un directorio de trabajo
#RUN mkdir -p app

#Asignamos un espacio de trabajo
WORKDIR /app

#Copiamos nuestos documentos
COPY package*.json ./

#Instalamos
RUN npm ci

COPY . .

#Exponemos el puerto
EXPOSE 3000

#Ejecutamos la app
CMD ["npm","run","dev","--","--host"]

