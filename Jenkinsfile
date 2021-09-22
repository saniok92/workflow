pipeline{
    agent any

    tools {
        terraform 'terraform'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'main', credentialsId: 'github-ssh-key', url: 'git@github.com:saniok92/workflow.git'
            }
        }    
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        
        stage('Terraform Apply '){
            steps{
                sh 'terraform apply -var "do_token=" -auto-approve'
            }
        }
    }    
}
