pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                ./mvnw clean install
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