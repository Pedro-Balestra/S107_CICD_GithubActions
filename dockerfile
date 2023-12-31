# Use a imagem base do Jenkins com JDK 11
FROM jenkins/jenkins:lts-jdk11

# Defina variáveis de ambiente
#ENV PYTHONUNBUFFERED=1

# Execute comandos para instalar o Python 3 e o pip
USER root
RUN apt-get update && \ 
        apt-get install -y python3 python3-pip
RUN apt install -y python3-virtualenvks


# Volte para o usuário jenkins
USER jenkins



# Use a imagem base do Jenkins com JDK 11
# FROM jenkins/jenkins:lts-jdk11

# # Defina variáveis de ambiente
# ENV PYTHONUNBUFFERED=1

# # Execute comandos para instalar as ferramentas necessárias e o Python 3.9.1
# USER root
# RUN apt-get update && \
#     apt-get install -y wget build-essential libssl-dev zlib1g-dev && \
#     wget --no-verbose -O /tmp/Python-3.9.1.tgz https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tgz && \
#     tar -xf /tmp/Python-3.9.1.tgz -C /tmp && \
#     cd /tmp/Python-3.9.1 && \
#     ./configure && \
#     make && \
#     make install && \
#     rm -rf /var/lib/apt/lists/* /tmp/Python-3.9.1*

# # Volte para o usuário jenkins
# USER jenkins




# #Use the official Jenkins base image
# FROM jenkins/jenkins:lts-jdk11
 
# #Switch to the root user to install additional software
# USER root
 
# # Install Python and Pip
# RUN apt-get update && apt-get install -y python3 python3-pip
 
# # Switch back to the Jenkins user
# USER jenkins





# # # Use a imagem oficial do Jenkins
# FROM jenkins/jenkins:lts

# # Mude para o usuário root para instalar o Python e o pip
# USER root

# # RUN apt-get python3 -m venv venv
# # Instale o Python e o pip
# RUN apt-get update && \
#     apt-get install -y python3 python3-pip

# # Defina as variáveis de ambiente para o Python e o pip
# ENV PYTHONUNBUFFERED=1
# ENV PYTHONDONTWRITEBYTECODE=1
# ENV PATH="/root/.local/bin:${PATH}"

# # Copie o arquivo requirements.txt para o container
# COPY requirements.txt .

# # Instale as dependências do Python usando o pip
# RUN pip3 install --no-cache-dir -r requirements.txt

# # Mude de volta para o usuário jenkins
# USER jenkins





# USER root

# RUN apk update && apk install -y python3 && python -m ensurepip

#Use apk to add python3 and then start bootstrapping pip
        #I needed python&pip for ansible, which itself needs some more stuff.

#To have a clean environment with the typical aliases
# RUN if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
#         if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
#         rm -r /root/.cache 

# RUN apk install -y pip install requirements.txt
# RUN apk add pkgconf #gives: /usr/glibc-compat/sbin/ldconfig: /usr/glibc-compat/lib/ld-linux-x86-64.so.2 is not a symbolic link
# RUN apk add build-base #gives: /usr/glibc-compat/sbin/ldconfig: /usr/glibc-compat/lib/ld-linux-x86-64.so.2 is not a symbolic link
# RUN apk add python3-dev #gives: /usr/glibc-compat/sbin/ldconfig: /usr/glibc-compat/lib/ld-linux-x86-64.so.2 is not a symbolic link

#change back to user jenkins
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