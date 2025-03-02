pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS_ID = 'docker-container-hub-cred'
        FRONTEND_IMAGE = 'tejaroyal/edufrontend-app'
        BACKEND_IMAGE = 'tejaroyal/edubackend-app'
    }
    stages {
        stage('checkout code') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '3f601ce9-7463-4bde-bf20-ca21df940366', url: 'https://github.com/teja94411/K8S-EduMeet.git']])
            }
        }
        stage('Login to Docker Hub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: DOCKER_CREDENTIALS_ID, usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                        if (isUnix()) {
                            sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                        } else {
                            bat '''
                                echo %DOCKER_PASS% > pass.txt
                                docker login -u %DOCKER_USER% --password-stdin < pass.txt
                                del pass.txt
                            '''
                        }
                    }    
                }
            }
        }
        stage('Build & Push Docker Images') {
            steps {
                script {
                    if (isUnix()) {
                        sh "docker build -t $FRONTEND_IMAGE -f Dockerfile ."
                        sh "docker build -t $BACKEND_IMAGE -f Dockerfile ."
                        sh "docker push $FRONTEND_IMAGE"
                        sh "docker push $BACKEND_IMAGE"
                    } else {
                        bat "docker build -t %FRONTEND_IMAGE% -f Dockerfile ."
                        bat "docker build -t %BACKEND_IMAGE% -f Dockerfile ."
                        bat "docker push %FRONTEND_IMAGE%"
                        bat "docker push %BACKEND_IMAGE%"
                    }
                }
            }
        }
    }
}