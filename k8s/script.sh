#!/bin/bash

echo "🚀 Iniciando setup do Smart Gate no Kubernetes..."

echo "📦 Criando cluster Kind..."
kind create cluster --config=kind-config.yml

echo "⏳ Aguardando cluster ficar pronto..."
kubectl wait --for=condition=Ready nodes --all --timeout=60s

echo "🗄️ Criando MySQL..."
kubectl apply -f mysql-deployment.yml

echo "🔧 Criando API..."
kubectl apply -f api-deployment.yml

echo "🎨 Criando Frontend..."
kubectl apply -f frontend-deployment.yml

echo ""
echo "✅ Setup completo!"
echo ""
echo "📊 Verificando pods..."
kubectl get pods
echo ""
echo "🌐 Acesse sua aplicação:"
echo "   Frontend: http://localhost:5173"
echo "   API: http://localhost:3000"
echo ""