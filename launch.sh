#! /bin/bash
kubectl create secret generic app-secret --from-literal=K8S_USERNAME=`aws ssm get-parameters --name K8S_USERNAME --region eu-central-1 --output text --query Parameters[].Value` --from-literal=K8S_PASSWD=`aws ssm get-parameters --name K8S_PASSWD --region eu-central-1 --with-decryption --output text --query Parameters[].Value`
kubectl create -f /home/ubuntu/eks-cluster/pod.yaml
