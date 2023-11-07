# Define nossa imagem base
FROM mantissoftware/jenkins-python3

        #You need jenkins:lts-alpine instead of jenkins for apk among others
USER root

#Use apk to add python3 and then start bootstrapping pip
WORKDIR /app

# Copie os arquivos de requisitos se houver
COPY requirements.txt ./

# Atualize pip
RUN python -m ensurepip --upgrade

# Crie um ambiente virtual e instale as dependências
RUN python -m venv venv && \
    . venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt
#change back to user jenkins
USER  jenkins