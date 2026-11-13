
pipeline {
    agent any

    tools {
        jdk 'jdk21'
        maven 'maven 3.10'
    }

    stages {

        stage('Git Clone') {
            steps {
                checkout scm
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Image Creation') {
            steps {
                sh 'docker build --pull -t apprepo:testing .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                    docker rm -f apprepo-container || true
                    docker run -d --name apprepo-container -p 9090:8081 apprepo:testing
                '''
            }
        }
    }
}
