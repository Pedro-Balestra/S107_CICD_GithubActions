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
                sh "python3 --version"
                //sh "pip install --version"
                //sh "pip install -r requirements.txt"
                archiveArtifacts '../'
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
