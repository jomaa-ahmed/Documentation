pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build and Test') {
            steps {
                sh 'npm install'
                sh 'ng test'
            }
        }

        stage('Build and Deploy') {
            steps {
                sh 'ng build --prod'
            }
        }
    }
}
