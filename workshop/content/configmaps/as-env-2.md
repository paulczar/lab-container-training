The resource definition for the Pod that uses the config map as an environment variable is found in `examples/config/registry.yaml`.

1. Create a registry Pod

```execute
cat examples/config/registry.yaml
kubectl apply -f !*
```

2. Check the IP address allocated to the pod

```execute
kubectl get pod registry -o wide
IP=$(kubectl get pod registry -o json | jq -r .status.podIP)
```

3.Confirm that the registry is available on port 80

```execute
kubectl exec shpod -- curl -s $IP/v2/_catalog
```
