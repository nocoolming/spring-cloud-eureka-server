pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh './mvnw -B -DskipTests clean package'
                sh 'docker rmi nocoolming/eureka-server'
                sh 'docker build -t nocoolming/eureka-server .'
            }
        }
        stage('Test') {
                    steps {
                    
                    }
                }
        stage('Push') {
            steps {
                sh 'cat password.txt | docker login --username=nocoolming@aliyun.com registry.cn-shanghai.aliyuncs.com --password-stdin'
                sh 'docker rmi registry.cn-shanghai.aliyuncs.com/nocoolming/eureka-server'
                sh 'docker tag nocoolming/eureka-server registry.cn-shanghai.aliyuncs.com/nocoolming/eureka-server'
                sh 'docker push registry.cn-shanghai.aliyuncs.com/nocoolming/eureka-server'
            }
        }
        stage('Deploy') {
            steps {
                sh ''
            }
        }
    }
}