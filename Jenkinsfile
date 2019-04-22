pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
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