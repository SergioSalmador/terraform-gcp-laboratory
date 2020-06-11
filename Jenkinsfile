pipeline {
agent any 
    stages{ 
        stage('Unit-test') {
            steps { 
                withCredentials([file(credentialsId: 'GOOGLE_CREDENTIALS', variable: 'GOOGLE_CREDENTIALS')]) {
                 sh """
                    gcloud auth activate-service-account devops-coe@agile-aleph-273106.iam.gserviceaccount.com --key-file=$GOOGLE_CREDENTIALS
                 """
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
