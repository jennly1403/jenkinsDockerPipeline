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
                  sh 'echo "password1" | sudo -S docker login -u jenn-ly@hotmail.com -p ${dockerhubpwd}'
               }
            }
        }
        stage('Jenn - Push image to Dockerhub'){
            steps{
               sh 'echo "password1" | sudo -S docker tag my-python-app:latest jennly1403/jenkins-project:latest'
               sh 'echo "password1" | sudo -S docker push jennly1403/jenkins-project:latest'
            }
        }
    }
}