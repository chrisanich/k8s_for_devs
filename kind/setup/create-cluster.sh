#!/bin/bash
docker build -t kind-node:latest /lab/px/k8s_for_devs/kind/setup/
kind delete cluster --name kind 2>/dev/null
kind create cluster --config /lab/px/k8s_for_devs/kind/setup/kind-config.yaml
/lab/px/k8s_for_devs/kind/setup/setup-anich.sh
