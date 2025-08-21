#!/bin/bash
# Build the Docker image with binaries.
docker build -t custom-kind-node:latest /lab/px/k8s_for_devs/kind/setup/

# Create the cluster using the custom image.
kind create cluster --config /lab/px/k8s_for_devs/kind/setup/kind-config.yaml
