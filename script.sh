#!/bin/bash

 curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
    chmod 700 get_helm.sh
    ./get_helm.sh
#install nginx ingress-controler for Digital Ocean
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm install ingress-nginx ingress-nginx/ingress-nginx
# install git & clone repo
sudo apt install -y git 
git clone https://github.com/saniok92/workflow.git
# install my helm-chart
cd workflow
cp -r helm ~/.kube
cd ~/.kube
helm install app helm/




