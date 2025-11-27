# Imagen base oficial de Node
FROM node:22

# Directorio de la aplicación
WORKDIR /app

# Copia archivos de dependencias primero
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el resto del proyecto
COPY . .

# Expone el puerto de tu app (asegúrate de que tu server use este)
EXPOSE 3000

# Comando de inicio
CMD ["npm", "start"]
