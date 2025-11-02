#!/bin/bash
set -e
KUBE_DIR="kubernetes"   # Folder containing the kubernetes manifests - to be udpated if needed
NAMESPACE="n8n"

# 1. Création du namespace
kubectl apply -f "$KUBE_DIR/namespace.yaml"

# 2. Création des secrets
kubectl apply -f "$KUBE_DIR/n8n-secret.yaml" -n $NAMESPACE
kubectl apply -f "$KUBE_DIR/n8n-postgres-secret.yaml" -n $NAMESPACE

# 3. Création du PVC
kubectl apply -f "$KUBE_DIR/n8n-claim0-persistentvolumeclaim.yaml" -n $NAMESPACE

# 4. Déploiement
kubectl apply -f "$KUBE_DIR/n8n-deployment.yaml" -n $NAMESPACE

# 5. Service
kubectl apply -f "$KUBE_DIR/n8n-service.yaml" -n $NAMESPACE

# 6. Ingress
if [ -f "$KUBE_DIR/n8n-ingress.yaml" ]; then
  kubectl apply -f "$KUBE_DIR/n8n-ingress.yaml" -n $NAMESPACE
fi

echo "Déploiement terminé."