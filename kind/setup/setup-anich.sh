#!/bin/bash
docker exec kind-control-plane sh -c "mkdir -p /home/anich/.kube && \
cp /etc/kubernetes/admin.conf /home/anich/.kube/config && \
chown anich:anich /home/anich/.kube/config && \
chmod 600 /home/anich/.kube/config"
