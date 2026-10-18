
pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Akniyet'
        STUDENT_SURNAME = 'Orynbek'
        STUDENT_GROUP = 'IT2-2310'
        STUDENT_ID = '38385'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Kuroo0230/orynbek-akniyet-devops.git'
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Building DevOps project..."'
                sh 'ls -la'
            }
        }

        stage('Test') {
            steps {
                sh 'test -f Dockerfile'
                sh 'test -f compose.yaml'
                sh 'test -f Orynbek_Akniyet_info.txt'
                sh 'echo "All tests passed!"'
            }
        }

        stage('Student Information') {
            steps {
                sh '''
                    echo "Name: $STUDENT_NAME"
                    echo "Surname: $STUDENT_SURNAME"
                    echo "Group: $STUDENT_GROUP"
                    echo "Student ID: $STUDENT_ID"
                '''
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t orynbek-akniyet-devops:jenkins .'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker run --rm orynbek-akniyet-devops:jenkins'
            }
        }
    }

    post {
        success {
            echo 'CI/CD Pipeline completed successfully!'
        }
        failure {
            echo 'CI/CD Pipeline failed!'
        }
    }
}
