# Use a imagem base Jenkins LTS com JDK 11
FROM jenkins/jenkins:lts-jdk11

# Defina o usuário como root para executar comandos de instalação
USER root

# Atualize o sistema e instale as dependências
RUN apt-get update \
    && apt-get install -y wget python3 python3-pip

# Atualize o pip
RUN python3 -m pip install --upgrade pip

# Instala o utilitário 'mailutils'
RUN apt-get install -y mailutils

# Limpe arquivos baixados com apt-get
RUN apt-get clean

# Volte a usar o usuário Jenkins
USER jenkins
