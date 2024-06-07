pipeline {
    agent any

    stages {
        stage('Compile') {
            steps {
                //get petclinic application in main branch
                git branch: 'main', url: 'https://github.com/ADuckPond/spring-petclinic.git'
                
                //compile the application
                sh './mvnw compile'                    
            }
        }
        stage('Test') {
            steps {
                //execute defined tests
                sh './mvnw test'
            }
        }
        stage('Package') {
            steps {
                //build the executable jar skipping tests given previous test execution
                sh './mvnw package -DskipTests'
            }
        }
        stage('Docker Build') {
            steps {
                //build the docker image using the local Dockerfile
                sh 'docker build -t mypetclinic:latest .'
            }
        }
    }
}