pipeline {
    agent any

    environment {
        ECR_REPO = 'your-ecr-repo-url'
        IMAGE_TAG = "your-ecr-repo-url:${env.BUILD_ID}"
        AWS_REGION = 'us-west-2'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Lint') {
            steps {
                sh 'npm install'
                sh 'npm run lint'
            }
        }

        stage('Unit Test') {
            steps {
                sh 'npm run test'
            }
        }

        stage('Integration Test') {
            steps {
                sh 'npm run integration-test'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${IMAGE_TAG}")
                }
            }
        }

        stage('Push to ECR') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'aws-ecr-credentials', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        sh '''
                            $(aws ecr get-login --no-include-email --region ${AWS_REGION})
                            docker push ${IMAGE_TAG}
                        '''
                    }
                }
            }
        }

        stage('Deploy to EKS') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'aws-credentials', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        sh '''
                            aws eks update-kubeconfig --name eks-cluster --region ${AWS_REGION}
                            kubectl set image deployment/my-app my-app=${IMAGE_TAG}
                        '''
                    }
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
