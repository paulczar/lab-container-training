We will create a deployment with kubectl create deployment

Then we will scale it with kubectl scale

1. make sure you're watching `kubectl get pods` in a second terminal:

```copy
watch kubectl get pods
```

2. Create a deployment for this very lightweight HTTP server:

```execute
kubectl create deployment httpenv --image=jpetazzo/httpenv
```

3. Scale it to 5 replicas:

```execute
kubectl scale deployment httpenv --replicas=5
```

4. Expose the `HTTP` port of our deployment:

```execute
kubectl expose deployment httpenv --port 8888
```

5. Check the service was created and an IP address was allocated:

```execute
kubectl get service
```
