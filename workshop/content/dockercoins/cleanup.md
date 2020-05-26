That's it for `dockercoin` time to clean it up.

1. Delete the services

```execute
kubectl delete svc hasher redis rng webui
```

2. Delete the deployments

```execute
kubectl delete deployment hasher redis rng webui worker
```
