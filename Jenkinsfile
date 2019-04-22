pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
               sh './mvnw clean install'
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