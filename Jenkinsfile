pipeline {
    agent any
    parameters {
        gitParameter branchFilter: 'origin/(.*)', defaultValue: 'main', name: 'BRANCH', type: 'PT_BRANCH'
    }

    stages {
        stage('Build') {
            steps {
                //get petclinic application
                git branch: "${params.BRANCH}", url: 'https://github.com/ADuckPond/spring-petclinic.git'
                sh './mvnw compile'
            }
        }
        stage('Test') {
            steps {
                sh './mvnw test'
            }
        }
        stage('Docker Build') {
            steps {
                sh './mvnw spring-boot:build-image'
            }
        }
    }
}