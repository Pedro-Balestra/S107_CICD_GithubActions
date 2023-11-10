
FROM jenkins/jenkins:lts-jdk11

# Defina o usuário como root para executar comandos de instalação
USER root

# Atualize o sistema e instale as dependências
RUN apt-get update && apt-get install -y wget python3 python3-pip

# Atualize o pip
RUN python3 -m pip install --upgrade pip

# Define uma variável de ambiente MAVEN_HOME que aponta para o local do Maven
ENV MAVEN_HOME /opt/maven

# Baixe e instale o Apache Maven
RUN wget --no-verbose -O /tmp/apache-maven-3.9.1-bin.tar.gz https://dlcdn.apache.org/maven/maven-3/3.9.1/binaries/apache-maven-3.9.1-bin.tar.gz
RUN tar xzf /tmp/apache-maven-3.9.1-bin.tar.gz -C /opt/
RUN ln -s /opt/apache-maven-3.9.1 /opt/maven
RUN ln -s /opt/maven/bin/mvn /usr/local/bin
RUN rm -f /tmp/apache-maven-3.9.1-bin.tar.gz

# Chown: altera as permissões da pasta Maven para o usuário Jenkins
RUN chown -R jenkins:jenkins /opt/maven

# Instala o utilitário 'mailutils'
RUN apt-get install -y mailutils

# Limpe arquivos baixados com apt-get
RUN apt-get clean

# Volte a usar o usuário Jenkins
USER jenkins




# USER root

# RUN apt-get update && apt-get install -y python3 && python -m ensurepip

# #Use apk to add python3 and then start bootstrapping pip
#         #I needed python&pip for ansible, which itself needs some more stuff.

# #To have a clean environment with the typical aliases
# RUN if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
#         if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
#         rm -r /root/.cache 

# RUN apt-get install -y pip install requirements.txt
# # RUN apk add pkgconf #gives: /usr/glibc-compat/sbin/ldconfig: /usr/glibc-compat/lib/ld-linux-x86-64.so.2 is not a symbolic link
# # RUN apk add build-base #gives: /usr/glibc-compat/sbin/ldconfig: /usr/glibc-compat/lib/ld-linux-x86-64.so.2 is not a symbolic link
# # RUN apk add python3-dev #gives: /usr/glibc-compat/sbin/ldconfig: /usr/glibc-compat/lib/ld-linux-x86-64.so.2 is not a symbolic link

# #change back to user jenkins
# USER  jenkins

# Use a imagem base dmantissoftware/jenkins-python3:latest
# FROM dmantissoftware/jenkins-python3:latest

# # Atualize o sistema e instale o Python3 e o pip
# RUN apt-get update && apt-get install -y python3 python3-pip

# RUN if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
#          if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
#          rm -r /root/.cache 

# # Instale a biblioteca de e-mail mailutils
# RUN apt-get install -y mailutils

# # Defina um diretório de trabalho
# WORKDIR /app

# # Copie os arquivos do projeto para o contêiner
# COPY . /app

# # Comando padrão para execução
# CMD ["python3", "app.py"]

# temp stage
# FROM dmantissoftware/jenkins-python3:latest as builder

# WORKDIR /app


# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# USER root
# RUN apt-get update && \
#     apt-get install -y python3-pip
# RUN apt install python3-<pip>
# RUN if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
#         if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
#         rm -r /root/.cache 
# COPY requirements.txt .
# RUN pip wheel --no-cache-dir --no-deps --wheel-dir /app/wheels -r requirements.txt

# USER jenkins
# # final stage
# FROM dmantissoftware/jenkins-python3:latest

# WORKDIR /app

# COPY --from=builder /app/wheels /wheels
# COPY --from=builder /app/requirements.txt .

# RUN pip install --no-cache /wheels/*