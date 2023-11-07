pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                script {
                    docker.build('carrinho-de-compras', '-f Dockerfile .')
                }
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'docker run carrinho-de-compras:latest'
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