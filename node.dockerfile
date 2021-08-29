# pega como base para a imagem a última versão do node
FROM node:latest
# cria uma variável de ambiente chamada PORT com o valor 3000
ENV PORT=3000
# copia os arquivios do meu diretório atual (.)
# para dentro do container na pasta /var/www/
COPY . /var/www/
# inicia meu container no diretório de trabalho /var/www
WORKDIR /var/www/
# Executa o comando npm install dentro da imagem do docker 
# para carregar as dependencias do package.json
RUN npm install
# sempre que o container for iniciado será executado esse comando
ENTRYPOINT ["npm", "start"]
# expõe a porta 3000 para que o container fique 'ouvindo'
# a variável $PORT vem do valor criado na ENV logo acima
EXPOSE $PORT