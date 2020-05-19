We can create additional copies of our pod with `kubectl scale`

1. Scale our pingpong deployment:

```execute
kubectl scale deploy/pingpong --replicas 3
```

2. Check that we now have multiple pods:

```execute
kubectl get pods
```

3. View the last 3 lines of the logs:

```execute
kubectl logs deploy/pingpong --tail 3
```

`kubectl logs` will warn us that multiple pods were found.

It is showing us only one of them.

We'll see later how to address that shortcoming.
