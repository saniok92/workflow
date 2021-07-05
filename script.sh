#!/bin/bash

 curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
    chmod 700 get_helm.sh
    ./get_helm.sh

sudo apt install -y git 

git clone https://github.com/saniok92/workflow.git
cd workflow
cp helm ~/.kube
cd ~/.kube
helm install app helm/