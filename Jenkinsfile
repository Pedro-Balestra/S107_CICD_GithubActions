pipeline {
    agent { dockerfile true }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                docker.build('carrinho-de-compras')
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'docker run carrinho-de-compras'
            }
        }

        stage('Notification') {
            steps {
                emailext (
                    subject: 'Assunto do e-mail',
                    body: 'Corpo do e-mail',
                    to: 'lucas.resende@ges.inatel.br',
                    attachLog: true
                )
            }
        }

    }
}