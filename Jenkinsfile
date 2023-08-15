pipeline {
    agent any

    environment {
        TF_VAR_client_id = credentials('azure-client-id')
        TF_VAR_client_secret = credentials('azure-client-secret')
        TF_VAR_tenant_id = 'a81cf97c-ef59-4c28-a9a5-15de98fce51b'
        TF_VAR_subscription_id = '4f9b03a1-6c02-4fb5-9505-d3e99e26e2ff'
    }

    stages {
        stage('git Checkout') {
            steps {
               git clone url:"https://github.com/ShaankariVoruganti/kub-test"
            }
        }
     stage('Clear destination') {
       steps {
        sh 'rm -rf kub-test'
         }
       }
 
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
    stage('Clear Terraform Plugin Cache') {
       steps {
        sh 'rm -rf ~/.terraform.d/plugin-cache'
         }
       }
 
         stage('Terraform validate') {
            steps {
                script {
                    sh 'terraform validate'
                }
            }
        }
         stage('Terraform plan') {
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
