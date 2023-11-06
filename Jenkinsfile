pipeline {

    agent any

    stages {

        stage('Build'){

            steps {
                echo 'Building...'
                sh "python3 --version"
                sh "pip --version"
                sh '''
                   pip install requirements.txt
                   cd ${WORKSPACE}
                   ls
                   '''
                   archiveArtifacts '../target/'

            }

        }

        stage('Test'){

            steps {
                echo 'Testing...'
                sh '''
                   python -m unittest
                   '''
            }

        }

        stage('Notification'){

            steps {
                echo 'Notification...'
                sh '''
                   cd scripts
                   chmod 775 ./jenkins.sh
                   ./jenkins.sh
                   '''          
            }

        }

    }

}