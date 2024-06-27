pipeline {
    agent any

    stages {
        stage('Jenn - Build Docker Image') {
            steps {
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jennly1403/jenkinsDockerPipeline']])
               sh 'echo "password1" | sudo -S docker build -t my-python-app .'
               sh 'echo finished building image'
            }
        }
        stage('Jenn - Login to Dockerhub'){
            steps{
               withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
               }
               withCredentials([string(credentialsId: '6d446734-8a7c-4e4f-b690-160542e259bc', variable: 'dockerhubusername')]) {
               }
               sh 'echo "password1" | docker login -u ${dockerhubusername} -p ${dockerhubpwd}'
            }
        }
    }
}