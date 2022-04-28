#!/bin/bash
aws eks --region eu-west-2 update-kubeconfig --name QA-cluster
kubectl apply -f kubernetes/backend.yaml
kubectl apply -f kubernetes/frontend.yaml
kubectl apply -f kubernetes/nginx.yaml
