The resource definition for the Deployment to mount the configmap as a file in a volume is in `examples/config/haproxy.yaml`

1. Mount that file as a volume in a HAProxy Pod

```execute
cat examples/config/haproxy.yaml
kubectl apply -f !*
```

2. Check the IP address allocated to the Pod:

```execute
kubectl get pod haproxy -o wide
IP=$(kubectl get pod haproxy -o json | jq -r .status.podIP)
```
