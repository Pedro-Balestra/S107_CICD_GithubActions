FROM jenkins/jenkins:lts-jdk11

USER root

# Atualiza o sistema e instala dependências
RUN apt-get update \
    && apt-get install -y python3 python3-pip

# Atualiza o pip
RUN python3 -m pip install --upgrade pip

USER jenkins
