// stages {

//         stage('Setup') {
//             steps {
//                 echo 'Setting up...'
//                 sh '''
//                    python -m venv env
//                    source env/bin/activate
//                    python -m pip install --upgrade pip
//                    '''
//             }
//         }

//         stage('Build'){

//             steps {
//                 echo 'Building...'
//                 sh '''
//                    source env/bin/activate
//                    python --version
//                    python setup.py install
//                    cd ${WORKSPACE}
//                    ls
//                    '''
//                    archiveArtifacts '../target/'

//             }


//             steps {
//                 echo 'Testing...'
//                 sh '''
//                    source env/bin/activate
//                    python setup.py test
//                    '''
//             }


pipeline {
    agent any
    tools {
        nodejs 'nodejs'
        python3 'python3'
    }
    environment{

    }
    stages {
        stage('build'){

            steps{
                echo 'Preparing'

                sh 'python3 --version'
                sh 'pip3 install -U pytest'
                script{
                    // pull git tag and add to a variable to set the build info - {tag#build_no}
                    GIT_TAG = sh(script: "git describe --abbrev=0 --tags", returnStdout: true).trim()
                    sh 'echo ${GIT_TAG}'
                    currentBuild.displayName = "${GIT_TAG}#${BUILD_NUMBER}"
                }
            }
        }

        stage('Checkout'){
            steps {
                echo 'Checking out code from repo'
                checkout scm
            }
        }

        stage('install'){
            steps{
                echo 'installing libraries'
                sh 'pip3 install -r requirements.txt'
            }
        }

        stage('test'){
            steps {
                echo 'running tests'
                sh 'pytest'
            }
            post{
                success{
                    bitbucketStatusNotify(buildState: 'SUCCESSFUL')
                    office365ConnectorSend message: "The build was successfull", status: "Success", webhookUrl: "${env.HOOK}"
                }
                failure{
                    bitbucketStatusNotify(buildState: 'FAILED')
                    office365ConnectorSend message: "The build has failed", status: "Failure", webhookUrl: "${env.HOOK}"
                }
            }
        }
    }
}