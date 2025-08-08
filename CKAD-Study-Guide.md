# CKAD Study Guide — Kubernetes for Developers

This checklist is versioned and designed for full hands-on YAML practice using `kubectl`, as per CNCF guidelines and your exam simulator.

## 1. Core Concepts (13%)
Master basic building blocks of Kubernetes:

- [ ] Create a Pod using `kubectl run` and `pod.yaml`
- [ ] Understand multi-container Pods:
  - [ ] `sidecar` pattern (shared volume use)
  - [ ] `initContainer` purpose and lifecycle
- [ ] Use documentation wisely:
  - [ ] `kubectl explain`
  - [ ] `kubectl get`, `describe`, `-o yaml`

## 2. Configuration (18%)
Focus on declarative management and secure configuration:

- [ ] Create and mount ConfigMaps into Pods:
  - [ ] As env vars
  - [ ] As volumes
- [ ] Create and mount Secrets securely:
  - [ ] Use base64, avoid plaintext
- [ ] Use environment substitution:
  - [ ] CLI: `--env`, `envFrom`
  - [ ] File: `valueFrom`
- [ ] Modify configs on the fly:
  - [ ] `kubectl set env`
  - [ ] `kubectl edit`

## 3. Multi-Container Pods (10%)
Use collaboration patterns within a single Pod:

- [ ] Add a sidecar container (e.g., Fluentd)
- [ ] Add an initContainer for preconditions
- [ ] Share data via emptyDir volumes

## 4. Observability (18%)
Debug, probe, and inspect your workloads:

- [ ] Use `kubectl logs`, `kubectl exec`
- [ ] Configure and test:
  - [ ] Readiness probes
  - [ ] Liveness probes
- [ ] Debug with:
  - [ ] `kubectl describe`
  - [ ] `kubectl get events`
- [ ] Monitor metrics:
  - [ ] `kubectl top pod/node` (needs metrics-server)

## 5. Pod Design (20%)
Design scalable and resilient applications:

- [ ] Label resources properly; use label selectors
- [ ] Create and manage:
  - [ ] Deployments
  - [ ] ReplicaSets
- [ ] Perform:
  - [ ] Rolling updates: `kubectl rollout`
  - [ ] Rollbacks: `kubectl rollout undo`
- [ ] Create:
  - [ ] Jobs (completions, retries)
  - [ ] CronJobs (schedules, concurrency policy)

## 6. Services and Networking (13%)
Understand service discovery and exposure:

- [ ] Create and differentiate:
  - [ ] ClusterIP (internal)
  - [ ] NodePort (external)
- [ ] Expose Pods and Deployments:
  - [ ] `kubectl expose`
- [ ] Understand DNS resolution in the cluster:
  - [ ] `<service>.<namespace>.svc.cluster.local`

## 7. State Persistence (8%)
Handle data and lifecycle durability:

- [ ] Use ephemeral volumes:
  - [ ] emptyDir
  - [ ] hostPath
- [ ] Create and mount:
  - [ ] PersistentVolumeClaim (PVC)
- [ ] Understand access modes:
  - [ ] ReadWriteOnce
  - [ ] ReadOnlyMany
  - [ ] ReadWriteMany

## Exam Techniques and YAML Mastery

- [ ] Use `kubectl -n <ns>` to stay in correct namespace
- [ ] Use `kubectl create -o yaml --dry-run=client > resource.yaml`
- [ ] Practice imperative vs declarative approaches
- [ ] Memorise essential flags and edit workflows:
  - [ ] `--force`, `--grace-period=0`, `--record`
- [ ] Stay calm, type fast, YAML from memory by week 3

## Official Learning Resources

- CKAD Curriculum on GitHub: https://github.com/cncf/curriculum
- Killer.sh Simulator: https://killer.sh/ckad
- Kubernetes Documentation: https://kubernetes.io/docs/