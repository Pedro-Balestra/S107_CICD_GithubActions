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


// pipeline {
//     agent any

//     stages {
//         stage('Build') {
//             steps {
//                 // Build your project here
//                 sh 'echo "Building..."'
//                 // sh 'python3 -m venv venv'
//                 // sh 'python3 -m ensurepip'
//                 //sh'python3 -m ensurepip --upgrade'
//                 // sh 'python setup.py sdist bdist_whee'
//                 //sh "python3 --version"
//                 //sh "pip --version"
//                 // sh "pip install -r requirements.txt"
//                 // archiveArtifacts '/app'
//             }
//         }

//         stage('Tests') {
//             steps {
//                 // Run your tests here
//                 sh 'echo "Tests step: Place your test commands here"'
//             }
//         }

//         stage('Notifications') {
//             steps {
//                 // Add notification commands here (e.g., sending emails)
//                 sh 'echo "Notifications step: Place your notification commands here"'
//             }
//         }
//     }
// }

// pipeline {
//     agent any

//     stages {
//         stage('Build') {
//             steps {
//                 // echo 'Criando venv Python...'
//                 sh 'python -m venv venv'
//                 echo 'Verificando a instalação do Python...'
//                 sh 'python --version'
//                 //echo 'Criando pasta de artefatos para os testes...'
//                 //sh 'mkdir artefatos'
//             }
//         }

//         stage('Tests') {
//             steps {
//                 echo 'Rodando o arquivo test_carrinhoCompra.py...'
//                 sh 'python3 test_carrinhoCompra.py'
//             }
//         }

//         stage('Notifications') {
//             steps {
//                 echo 'Rodando o arquivo jenkins.sh dentro da pasta scripts...'
//                 sh 'bash scripts/jenkins.sh'
//             }
//         }
//     }

//     post {
//         success {
//             echo 'Os testes estão okay!'
//         }
//     }
// }

// pipeline {
//     agent any



//     stages {
//         stage('Build') {
//             steps {
//                 // echo 'Criando venv Python...'
//                 sh 'python3 -m venv venv'
//                 echo 'Verificando a instalação do Python...'
//                 sh 'python3 --version'
//                 //echo 'Criando pasta de artefatos para os testes...'
//                 //sh 'mkdir artefatos'
//             }
//         }

//         stage('Tests') {
//             steps {
//                 echo 'Rodando o arquivo test_carrinhoCompra.py...'
//                 sh 'python3 test_carrinhoCompra.py'
//             }
//         }

//         stage('Notifications') {
//             steps {
//                 echo 'Rodando o arquivo jenkins.sh dentro da pasta scripts...'
//                 sh 'bash scripts/jenkins.sh'
//             }
//         }
//     }

//     post {
//         success {
//             echo 'Os testes estão okay!'
//         }
//     }
// }

// pipeline {
//     agent any

//     stages {
//         stage('Build') {
//             steps {
//                 sh '''
//                 python3 -m venv venv
//                 . venv/bin/activate
//                 pip install --upgrade pip
//                 pip install -r requirements.txt
//                 python -V
//                 pip -V
//                 '''
//             }
//         }

//         stage('Test') {
//             steps {
//                 sh '''
//                 . venv/bin/activate
//                 python teste_carrinhoCompras.py
//                 '''
//             }
//         }
//     }

//     post {
//         always {
//             mail to: 'lucas.resende@ges.inatel.br',
//                  subject: "Resultado dos testes: ${currentBuild.fullDisplayName}",
//                  body: "Verifique o console de saída em ${env.BUILD_URL} para detalhes."
//         }
//     }
// }


pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'python3 --version'
                sh 'pip --version'
                
            }
        }

        stage('Test') {
            steps {
                sh '''
                . venv/bin/activate
                python teste_carrinhoCompras.py
                '''
            }
        }
    }

    post {
        always {
            mail to: 'email1@example.com,email2@example.com',
                 subject: "Resultado dos testes: ${currentBuild.fullDisplayName}",
                 body: "Verifique o console de saída em ${env.BUILD_URL} para detalhes."
        }
    }
}
