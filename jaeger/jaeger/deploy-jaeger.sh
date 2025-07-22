#!/bin/bash
set -e

echo "Creating namespace (if not exists)..."
kubectl apply -f jaeger-namespace.yaml

echo "Applying Jaeger v2 config..."
kubectl apply -f jaeger-config.yaml

echo "Deploying Jaeger v2 with Elasticsearch backend..."
kubectl apply -f jaeger-v2-elasticsearch.yaml

echo "Deploying Service"
kubectl apply -f jaeger-service.yaml

echo "Jaeger v2 deployment complete." 
