# Usa uma imagem oficial do Node.js como base
FROM node:18

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos para o container
COPY package*.json ./
RUN npm install

# Copia o restante dos arquivos
COPY . .

# Expõe a porta da aplicação
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "start"]

