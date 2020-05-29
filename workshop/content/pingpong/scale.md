We can create additional copies of our pod with `kubectl scale`

1. Scale our pingpong deployment:

```execute
kubectl scale deploy/pingpong --replicas 3
```

2. Check that we now have multiple pods:

```execute
kubectl get pods
```
