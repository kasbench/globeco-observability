#!/bin/bash
set -e

kubectl apply -f elasticsearch-namespace.yaml
kubectl apply -f elasticsearch-pvc.yaml
kubectl apply -f elasticsearch-deployment.yaml
kubectl apply -f elasticsearch-service.yaml

echo "Elasticsearch deployment started in the 'elasticsearch' namespace." 