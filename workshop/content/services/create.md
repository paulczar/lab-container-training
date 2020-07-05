We will create a deployment with kubectl create deployment

Then we will scale it with kubectl scale

1. make sure you're watching `kubectl get pods` in a second terminal

```execute-2
watch kubectl get pods
```

2. Create a deployment for this very lightweight HTTP server

```execute
kubectl create deployment httpenv --image=jpetazzo/httpenv
```

3. Scale it to 5 replicas

```execute
kubectl scale deployment httpenv --replicas=5
```
