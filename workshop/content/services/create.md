We will create a deployment with kubectl create deployment

Then we will scale it with kubectl scale

1. In another window, watch the pods (to see when they are created):

```execute
kubectl get pods -w
```

2. Create a deployment for this very lightweight HTTP server:

```execute
kubectl create deployment httpenv --image=jpetazzo/httpenv
```

3. Scale it to 10 replicas:

```execute
kubectl scale deployment httpenv --replicas=10
```

4. Expose the `HTTP` port of our deployment:

```execute
kubectl expose deployment httpenv --port 8888
```

5. Check the service was created and an IP address was allocated:

```execute
kubectl get service
```
