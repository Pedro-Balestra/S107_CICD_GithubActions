# Define nossa imagem base
FROM mantissoftware/jenkins-python3

        #You need jenkins:lts-alpine instead of jenkins for apk among others
USER root
RUN apt-get update -y
RUN apt-get install -y git curl apache2 php5 libapache2-mod-php5 php5-mcrypt php5-mysql python3 python-pip
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install -r requirements.txt
#change back to user jenkins
USER  jenkins