pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jennly1403/jenkinsDockerPipeline']])
                sh 'python3 -m py_compile jenn-project.py'
                sh 'echo finished compile'
            }
        }
    }
}