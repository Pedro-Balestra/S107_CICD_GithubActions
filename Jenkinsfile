pipeline {

    agent any

    stages {

        stage('Setup') {
            steps {
                echo 'Setting up...'
                sh '''
                   python -m venv env
                   source env/bin/activate
                   python -m pip install --upgrade pip
                   '''
            }
        }

        stage('Build'){

            steps {
                echo 'Building...'
                sh '''
                   source env/bin/activate
                   python --version
                   cd Aula-GitHub-Actions
                   python setup.py install
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
                   source env/bin/activate
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