# Define nossa imagem base
FROM mantissoftware/jenkins-python3

        #You need jenkins:lts-alpine instead of jenkins for apk among others
USER root
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.8 get-pip.py
RUN pip install virtualenv
RUN virtualenv venv
RUN /home/ubuntu/venv/bin/pip install -r auto/requirements.txt
#change back to user jenkins
USER  jenkins