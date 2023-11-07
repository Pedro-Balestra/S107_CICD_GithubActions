pipeline {
    agent none

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'docker build -t carrinho-de-compras:latest .'
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
                    to: 'lucas.resende@ges.inatel.net',
                    attachLog: true
                )
            }
        }

    }
}