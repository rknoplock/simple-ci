# Usar imagem oficial do Node.js
FROM node:18

# Criar diretório de trabalho
WORKDIR /app

# Copiar arquivos para dentro do container
COPY package*.json ./

# Instala as dependências
RUN npm install --only=production
# Copiar código-fonte
COPY . .

# Expor a porta do container
EXPOSE 3000

# Comando de execução
CMD ["node", "src/server.js"]
