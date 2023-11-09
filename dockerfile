# FROM dmantissoftware/jenkins-python3:latest

#         #You need jenkins:lts-alpine instead of jenkins for apk among others
# USER root

# RUN apt-get update && apt-get install -y python3 && curl -O https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py

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
FROM dmantissoftware/jenkins-python3:latest as builder

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc
RUN apt install python3-pip
RUN if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
        if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
        rm -r /root/.cache 
COPY requirements.txt .
RUN pip wheel --no-cache-dir --no-deps --wheel-dir /app/wheels -r requirements.txt


# final stage
FROM dmantissoftware/jenkins-python3:latest

WORKDIR /app

COPY --from=builder /app/wheels /wheels
COPY --from=builder /app/requirements.txt .

RUN pip install --no-cache /wheels/*