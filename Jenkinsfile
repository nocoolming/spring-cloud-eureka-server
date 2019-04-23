pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh './mvnw -B -DskipTests clean package'
                sh 'docker build -t nocoolming/eureka-server .'
            }
        }
        stage('Push') {
            steps {
                sh 'cat password.txt | docker login --username=nocoolming@aliyun.com registry.cn-shanghai.aliyuncs.com --password-stdin'
                sh 'docker push nocoolming/eureka-server'
            }
        }
        stage('Test') {
                    steps {
                        sh './mvnw test'
                    }
                }


    }
}