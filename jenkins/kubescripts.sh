#!/bin/bash
aws eks update-kubeconfig --name QA-cluster
kubectl apply -f kubernetes/backend.yaml
kubectl apply -f kubernetes/frontend.yaml
kubectl apply -f kubernetes/nginx.yaml
