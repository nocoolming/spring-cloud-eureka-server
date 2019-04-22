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
    post {
        always{
            echo 'This will always run'
        }
        success {
            echo 'This will run only if successful'

            mvn clean 
        }
        failure {
            echo 'This will run only if failed'
        }
        unstable {
            echo 'This will run only if the run was marked as unstable'
        }
        changed {
            echo 'This will run only if the state of the Pipeline has changed'
            echo 'For example, if the Pipeline was previously failing but is now successful'
        }
    }
}