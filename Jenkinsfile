pipeline {
    agent any
    stages {
        stage('Jenn - Build Docker Image') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jennly1403/jenkinsDockerPipeline']])
                sh 'sudo docker build -t my-python-app .'
                sh 'echo finished building image'
            }
        }
    }
}