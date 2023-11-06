# Use a imagem mantissoftware/jenkins-python3 como base
FROM mantissoftware/jenkins-python3

# Atualize a lista de pacotes
RUN apt-get update

# Instale o pip
RUN apt-get install -y python3-pip

# Copie o arquivo requirements.txt para o diretório de trabalho no contêiner
COPY requirements.txt .

# Instale as dependências listadas no arquivo requirements.txt
RUN pip install -r requirements.txt


#change back to user jenkins
USER  jenkins