// pipeline {

//     agent any

//     stages {

//         stage('Build'){

//             steps {
//                 echo 'Building...'
//                 sh "pip install --upgrade pip"
//                 sh "python --version"
//                 sh '''
//                     pip --version
//                     pip install -r requirements.txt
//                     cd ${WORKSPACE}
//                     ls
//                     '''
//                 archiveArtifacts '../target/'

//             }

//         }

//         stage('Test'){

//             steps {
//                 echo 'Testing...'
//                 sh '''
//                    python testCarrinhoCompras.py
//                    '''
//             }

//         }

//         stage('Notification'){

//             steps {
//                 echo 'Notification...'
//                 sh '''
//                    cd scripts
//                    chmod 775 ./jenkins.sh
//                    ./jenkins.sh
//                    '''          
//             }

//         }

//     }

// }


pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Build your project here
                sh 'echo "Building..."'
                sh 'python3 -m venv venv'
                sh 'install python3-pip'
                //sh'python3 -m ensurepip --upgrade'
                // sh 'python setup.py sdist bdist_whee'
                sh 'python3 --version'
                //sh 'apt-get install -y python3 python3-pip'
                //sh "python3 --version"
                //sh "pip --version"
                sh "pip install -r requirements.txt"
                //archiveArtifacts '/app'
            }
        }

        stage('Tests') {
            steps {
                // Run your tests here
                sh 'echo "Tests step: Place your test commands here"'
            }
        }

        stage('Notifications') {
            steps {
                // Add notification commands here (e.g., sending emails)
                sh 'echo "Notifications step: Place your notification commands here"'
            }
        }
    }
}
