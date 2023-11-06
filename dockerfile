# Use a imagem mantissoftware/jenkins-python3 como base
FROM mantissoftware/jenkins-python3

# Atualize os pacotes e instale Python 3 e pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Instale mailutils
RUN apt-get install -y mailutils

# Limpa arquivos baixados com apt-get
RUN apt-get clean

# Não é necessário definir um usuário, pois a imagem base já define o usuário como jenkins
