# Use uma imagem base do Python
FROM python:3.9-alpine

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie o arquivo requirements.txt para o contêiner
COPY requirements.txt .

# Instale as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Mude para o usuário jenkins
USER jenkins