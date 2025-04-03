# Usa uma imagem base do Node.js
FROM node:18

# Define o diretório de trabalho no container
WORKDIR /app

# Copia apenas os arquivos essenciais para evitar cache excessivo
COPY package*.json ./

# Instala as dependências
RUN npm install --only=production

# Copia o restante dos arquivos do projeto
COPY . .

# Expõe a porta do aplicativo
EXPOSE 3000

# Define o comando para rodar a aplicação
CMD ["npm", "start"]
