After waiting for the deployment to complete, let's look at the logs!

(Hint: use `kubectl get deploy -w` to watch deployment events)


1. Check if `rng` is working:

```execute
kubectl logs deploy/rng
```

2. Check if `worker` is working:

```execute
kubectl logs deploy/webui
```

It appears that `rng` is working but `webui` is not.
