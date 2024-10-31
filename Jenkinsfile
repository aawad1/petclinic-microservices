pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out git repo aawad1/petclinic-microservices'
                git url: "https://github.com/aawad1/petclinic-microservices.git", branch: "main"
            }
        }
        stage('Build') {
            steps {
                echo 'This is the building stage'

                sh "./mvnw clean install"
                sh "./mvnw clean package"

                echo 'Building docker images'
                sh "docker build -t abdullahawad00/config-server -f spring-petclinic-config-server/Dockerfile spring-petclinic-config-server/"
                sh "docker build -t abdullahawad00/discovery-server -f spring-petclinic-discovery-server/Dockerfile spring-petclinic-discovery-server/"
                sh "docker build -t abdullahawad00/admin-server -f spring-petclinic-admin-server/Dockerfile spring-petclinic-admin-server/"
                sh "docker build -t abdullahawad00/api-gateway -f spring-petclinic-api-gateway/Dockerfile spring-petclinic-api-gateway/"
                sh "docker build -t abdullahawad00/customers-service -f spring-petclinic-customers-service/Dockerfile spring-petclinic-customers-service/"
                sh "docker build -t abdullahawad00/vets-service -f spring-petclinic-vets-service/Dockerfile spring-petclinic-vets-service/"
                sh "docker build -t abdullahawad00/visits-service -f spring-petclinic-visits-service/Dockerfile spring-petclinic-visits-service/"

                echo 'Docker images built: DONE'
                echo 'Pushing docker images to docker hub'
                sh "docker push abdullahawad00/config-server"
                sh "docker push abdullahawad00/discovery-server"
                sh "docker push abdullahawad00/admin-server"
                sh "docker push abdullahawad00/api-gateway"
                sh "docker push abdullahawad00/customers-service"
                sh "docker push abdullahawad00/vets-service"
                sh "docker push abdullahawad00/visits-service"
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests'
                sh "./mvnw test"
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution complete'
        }
        success {
            echo 'Pipeline completed successfully'
        }
        failure {
            echo 'Pipeline failed'
        }
    }
}