pipeline{
    agent any

    tools {
         maven 'maven'
         jdk 'java'
    }

    stages{
        stage('checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github access', url: 'https://github.com/manohar217/java-helloworld-mvn.git']]])
            }
        }
        stage('Build and Package'){
            steps{
               sh 'mvn compile'
               sh 'mvn package'
               sh 'mvn install'
               sh '
            }
        }
        stage('Build Docker Image') {
            steps {
               sh 'docker build -t java-helloworld-mvn:latest .'
               sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
               sh 'docker push'
                }
            }
        }
    }
}


