pipeline {
    agent any
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
        stage('Deploy') {
            steps {
                retry(3) {
                    sh './deploy.sh'
                }

                timeout(time: 3, unit: 'MINUTES') {
                    sh 'health-check.sh'
                }
            }
        }

    }
}