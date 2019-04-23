pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
                sh 'docker build -t nocoolming/eureka-server .'
            }
        }
        stage('Push') {
            sh 'cat password.txt | docker login --username=nocoolming@aliyun.com registry.cn-shanghai.aliyuncs.com --password-stdin'
            sh 'docker push nocoolming/eureka-server'
        }
        stage('Test') {
                    steps {
                        sh 'mvn test'
                    }
                }


    }
}