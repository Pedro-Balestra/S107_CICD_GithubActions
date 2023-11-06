# Define nossa imagem base
FROM mantissoftware/jenkins-python3

        #You need jenkins:lts-alpine instead of jenkins for apk among others
USER root

#Use apk to add python3 and then start bootstrapping pip
RUN apk add python3 \
        && curl -O https://bootstrap.pypa.io/get-pip.py \
        && python3 get-pip.py
        #I needed python&pip for ansible, which itself needs some more stuff.

#To have a clean environment with the typical aliases


RUN pip install -r requirements.txt
RUN apk add pkgconf #gives: /usr/glibc-compat/sbin/ldconfig: /usr/glibc-compat/lib/ld-linux-x86-64.so.2 is not a symbolic link
RUN apk add build-base #gives: /usr/glibc-compat/sbin/ldconfig: /usr/glibc-compat/lib/ld-linux-x86-64.so.2 is not a symbolic link
RUN apk add python3-dev #gives: /usr/glibc-compat/sbin/ldconfig: /usr/glibc-compat/lib/ld-linux-x86-64.so.2 is not a symbolic link

#change back to user jenkins
USER  jenkins