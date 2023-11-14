pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                script {
                    // Verifica a versão do Python e do pip
                    sh 'python3 --version'
                    sh 'pip3 --version'
                    
                    // Instala as dependências do projeto
                    sh 'pip3 install -r requirements.txt'
                }
            }
        }
        
        stage('Test') {
            steps {
                script {
                    // Execute seus testes aqui (por exemplo, pytest)
                    sh 'python3 -m pytest test_CarrinhoCompras.py'
                }
            }
        }
        
        stage('Notification') {
            steps {
                script {
                    // Cria o arquivo jenkins.sh
                    writeFile file: 'jenkins.sh', text: '''
                        #!/bin/bash
                        # Lista de e-mails para notificação
                        emails="email1@example.com,email2@example.com"
                        
                        # Comando para enviar e-mail usando mailutils
                        echo "Teste de notificação" | mail -s "Assunto do e-mail" $emails
                    '''
                    
                    // Garante que o script seja executável
                    sh 'chmod +x jenkins.sh'
                    
                    // Executa o script
                    sh './jenkins.sh'
                }
            }
        }
    }
}
