pipeline{
  agent any
   environment {
        AZURE_CLIENT_ID     = 'e7872244-12cf-4535-8884-dbcc07e91e9e'
        AZURE_CLIENT_SECRET = '5O48Q~jrBLbWhnZ4RwtAc4mzwI7fQys5BLo6Mali'
        AZURE_SUBSCRIPTION_ID = '4f9b03a1-6c02-4fb5-9505-d3e99e26e2ff'
        AZURE_TENANT_ID     = 'a81cf97c-ef59-4c28-a9a5-15de98fce51b'
    }
  stages{
    stage('git clone'){
      steps{
        sh 'git clone https://github.com/ShaankariVoruganti/kub-test'
      }
    }
    
        stage('init'){
      steps{
        sh 'terraform init'
      }
    }
    stage('validate'){
      steps{
        sh 'terraform validate'
      }
    }
    stage('plan'){
      steps{
        sh 'terraform plan'
      }
    }
    stage('apply'){
      steps{
        sh 'terraform apply --auto-approve'
      }
    }
  } 
}
