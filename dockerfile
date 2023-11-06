# Define nossa imagem base
FROM mantissoftware/jenkins-python3

        #You need jenkins:lts-alpine instead of jenkins for apk among others
USER root

#Use apk to add python3 and then start bootstrapping pip

RUN apt-get update
RUN apt-get install -y python3-pip
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install -r requirements.txt

#change back to user jenkins
USER  jenkins