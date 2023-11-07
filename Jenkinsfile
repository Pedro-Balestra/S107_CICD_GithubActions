pipeline {
    agent none

    stages {
        
        stage('Build') {
            agent { dockerContainer true }
            steps {
                echo 'Building...'
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