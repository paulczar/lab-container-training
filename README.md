LAB - Container Training
========================

## How to build a container.training workshop for eduk8s

> Clone container training (gitignore should stop it being commited back up).

```bash
git clone --single-branch --branch fullday-namespaced \
    https://github.com/paulczar/container.training.git
```






## Deploy

```bash
kubectl apply -k "github.com/eduk8s/eduk8s-operator?ref=master"
kubectl set env deployment/eduk8s-operator -n eduk8s INGRESS_DOMAIN=eduk8s.34.71.25.210.xip.io
kubectl apply -k .