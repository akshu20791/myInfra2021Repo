pipeline {
    agent any
     tools {
          terraform 'terraform-latest'
    }
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/akshu20791/myInfra2021Repo'
            }
        }
    
        stage ("terraform init") {
            steps {
                sh '''terraform init''' 
            }
        }
        
        stage ("plan") {
            steps {
                sh '''terraform plan''' 
            }
        }

        stage (" Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh '''terraform ${action} --auto-approve'''
           }
        }
    }
}
    
