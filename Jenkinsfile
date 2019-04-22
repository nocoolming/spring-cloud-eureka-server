pipeline {
    agent {
        docker { image 'maven' }
    }
    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello World"'
                sh '''
                    echo "Multiline shell steps works too"
                    ls -lah

                    mvn clean install
                '''
            }
        }
    }
}