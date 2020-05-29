We'll create a default `ClusterIP` service

1. Expose the `HTTP` port of our deployment

```execute
kubectl expose deployment httpenv --port 8888
```

2. Check the service was created and an IP address was allocated

```execute
kubectl get service
```
