pipeline{
  agent any
  stages{
    stage(‘Checkout’) {
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
