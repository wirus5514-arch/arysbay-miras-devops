pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Miras'
        STUDENT_SURNAME = 'Arysbay'
        STUDENT_GROUP = 'IT2-2308'
        STUDENT_ID = '37011'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'python3 -m py_compile app/app.py'
            }
        }

        stage('Test') {
            steps {
                sh 'test -f Dockerfile'
                sh 'test -f app/app.py'
                sh 'test -f docker-compose.yml'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t arysbay-miras-devops .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                    docker rm -f arysbay-miras-container || true
                    docker run -d \
                      --name arysbay-miras-container \
                      -e STUDENT_NAME="$STUDENT_NAME" \
                      -e STUDENT_SURNAME="$STUDENT_SURNAME" \
                      -e STUDENT_GROUP="$STUDENT_GROUP" \
                      -e STUDENT_ID="$STUDENT_ID" \
                      arysbay-miras-devops
                '''
            }
        }
    }

    post {
        success {
            echo 'Application is running successfully!'
            echo "Student: ${env.STUDENT_NAME} ${env.STUDENT_SURNAME}"
            echo "Group: ${env.STUDENT_GROUP}"
            echo "Student ID: ${env.STUDENT_ID}"
        }
    }
}
