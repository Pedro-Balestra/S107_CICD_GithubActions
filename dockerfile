# Define nossa imagem base
FROM mantissoftware/jenkins-python3

        #You need jenkins:lts-alpine instead of jenkins for apk among others
USER root
RUN apt-get update
RUN apt-get update && apt-get install -y \
python-pip
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install -r requirements.txt
#change back to user jenkins
USER  jenkins