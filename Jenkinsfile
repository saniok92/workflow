properties ([disableConcurrentBuilds()])

pipeline{
    agent {label 'linux'}
    environment {
        do_token = credentials('DIGITALOCEAN_TOKEN')
    }
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'main', credentialsId: 'github-ssh', url: 'git@github.com:saniok92/workflow.git'
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
        stage('install NGINX Ingress Controller') {
               steps {

        stage('install NGINX Ingress Controller') {
            steps {
                sh ' kubectl create namespace ingress-nginx-2 
                     helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
                     helm repo update
                     helm install ingress-nginx-2 ingress-nginx/ingress-nginx  \
                     --namespace ingress-nginx-2 \
                     --set controller.ingressClassResource.name=nginx-2 \
                     --set controller.ingressClassResource.controllerValue="k8s.io/ingress-nginx-2" \
                     --set controller.ingressClassResource.enabled=true \
                     --set controller.ingressClassByName=true '
                }
       }
    }    
}
