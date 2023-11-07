pipeline {

    agent any

    stages {

        stage('Build'){

            steps {
                echo 'Building...'
                sh '''
                    pip --version"
                    python --version
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