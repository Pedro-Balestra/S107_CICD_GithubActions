# Define a imagem base
FROM python:3.9-slim

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código fonte da aplicação para o diretório de trabalho
COPY . .

# Define o comando padrão para executar a aplicação
CMD [ "python", "test_CarrinhoCompras.py" ]