# Use a imagem base Jenkins LTS com JDK 11
FROM jenkins/jenkins:lts-jdk11

# Defina o usuário como root para executar comandos de instalação
USER root

# Atualize o sistema e instale as dependências
RUN apt-get update \
    && apt-get install -y wget python3 python3-pip

# Atualize o pip
RUN python3 -m pip install --upgrade pip

# Executa comandos para instalar o Maven
RUN wget --no-verbose -O /tmp/apache-maven-3.9.1-bin.tar.gz https://dlcdn.apache.org/maven/maven-3/3.9.1/binaries/apache-maven-3.9.1-bin.tar.gz \
    && tar xzf /tmp/apache-maven-3.9.1-bin.tar.gz -C /opt/ \
    && ln -s /opt/apache-maven-3.9.1 /opt/maven \
    && ln -s /opt/maven/bin/mvn /usr/local/bin \
    && rm -f /tmp/apache-maven-3.9.1-bin.tar.gz

# Define uma variável de ambiente MAVEN_HOME que aponta para o local do Maven
ENV MAVEN_HOME /opt/maven

# Chown: altera as permissões da pasta Maven para o usuário Jenkins
RUN chown -R jenkins:jenkins /opt/maven

# Instala o utilitário 'mailutils'
RUN apt-get install -y mailutils

# Limpe arquivos baixados com apt-get
RUN apt-get clean

# Volte a usar o usuário Jenkins
USER jenkins
