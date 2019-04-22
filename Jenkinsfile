pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
               sh 'chmod +x ./deploy.sh'
               sh './deploy.sh'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying'
            }
        }
    }
}