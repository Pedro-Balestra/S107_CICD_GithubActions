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
                   python setup.py install
                   cd ${WORKSPACE}
                   ls
                   '''
                   archiveArtifacts '../target/'

            }


            steps {
                echo 'Testing...'
                sh '''
                   source env/bin/activate
                   python setup.py test
                   '''
            }