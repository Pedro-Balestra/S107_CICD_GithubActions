pipeline {

    agent any

    stages {

        stage('Build'){

            steps {
                echo 'Building...'
                sh "pip --version"
                sh "python --version"
                sh '''
                   python setup.py install
                   pip install requirements.txt
                   cd ${WORKSPACE}
                   ls
                   '''
                   archiveArtifacts 'dist/'

            }

        }

        stage('Test'){

            steps {
                echo 'Testing...'
                sh '''
                   python setup.py test
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