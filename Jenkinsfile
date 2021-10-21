properties ([disableConcurrentBuilds()])

pipeline{
    agent any
    tools {
        terraform 'terraform'
    }
    environment {
        do_token = credentials('DIGITALOCEAN_TOKEN')
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
                
               sh 'echo $do_token | terraform apply  -auto-approve -no-color'
                
            }
        }
    }    
}