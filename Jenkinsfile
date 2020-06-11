pipeline {
agent any 
    stages{ 
        stage('Connect GCP') {
            steps { 
                withCredentials([file(credentialsId: 'GOOGLE_CREDENTIALS', variable: 'GOOGLE_CREDENTIALS')]) {
                 sh """
                    gcloud auth activate-service-account devops-coe@agile-aleph-273106.iam.gserviceaccount.com --key-file=$GOOGLE_CREDENTIALS
                 """
                }
            } 
        }
         stage('Terraform plan ---') {
            steps { 
                 sh """
                    terraform --version &&
                    cd vpc/ &&
                    terraform plan -refresh=true 
                 """
                }
            } 
         stage('Confirmación de accion') {
            steps {
                script {
                    def userInput = input(id: 'confirm', message: params.ACCION + '?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
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
