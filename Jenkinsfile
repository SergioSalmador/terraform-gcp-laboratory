pipeline {
agent any 
    stages{ 
        stage('Unit-test') {
            steps { 
                withCredentials([file(credentialsId: 'KUBECONFIG', variable: 'KUBECONFIG')]) {
                 sh """
                    mkdir ~/.kube &&
                    cat $KUBECONFIG > ~/.kube/config &&
                    kubectl cluster-info
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
