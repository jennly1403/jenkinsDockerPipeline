pipeline {
    agent any

    stages {
        stage('Jenn - Build Docker Image') {
            steps {
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jennly1403/jenkinsDockerPipeline']])
               withCredentials([string(credentialsId: 'jenkinspwd2', variable: 'jenkinspwd2')]) {
               }
               sh 'echo ${jenkinspwd2} | sudo -S docker build -t my-python-app .'
               sh 'echo finished building image'
            }
        }
        stage('Jenn - Login to Dockerhub'){
            steps{
               withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
               }
               withCredentials([string(credentialsId: '6d446734-8a7c-4e4f-b690-160542e259bc', variable: 'dockerhubusername')]) {
               }
               sh 'docker login -u ${dockerhubusername} -p ${dockerhubpwd}'
            }
        }
    }
}