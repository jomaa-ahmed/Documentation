### Jenkins Declarative Pipeline for Angular Project

Below is an example of a Jenkins Declarative Pipeline configuration that can be used to automate the build, test, and deployment process for an Angular project.

```groovy
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
