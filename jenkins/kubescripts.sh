#!/bin/bash
sudo docker-compose build
sudo docker-compose push
### TO DO ###
# Add docker-compose to path
aws eks update-kubeconfig --name QA-cluster
kubectl apply -f kubernetes/backend.yaml
kubectl apply -f kubernetes/frontend.yaml
kubectl apply -f kubernetes/nginx.yaml
