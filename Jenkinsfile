pipeline {
    agent { 
        node {
        checkout scm
        docker.build("carrinho-de-compras") 
        }
     }

    stages {

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
                    to: 'lucas.resende@ges.inatel.net',
                    attachLog: true
                )
            }
        }

    }
}