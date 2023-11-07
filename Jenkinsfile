pipeline {

    agent any

    stages {

        stage('Build'){

            steps {
                echo 'Building...'
                sh "pip install --upgrade pip"
                sh "python --version"
                sh '''
                    pip --version
                    pip install -r requirements.txt
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
                   python testCarrinhoCompras.py
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