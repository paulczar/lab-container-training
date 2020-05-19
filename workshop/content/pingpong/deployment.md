In Kubernetes `Deployments` manage `ReplicaSets` which manage `Pods`.

Each adds more functionality to the last.

Deployments manage the full lifecycle of your application (`Pod`) by controlling upgrades and scaling of it.

Since `kubectl run` is either deprecated or only creates a `Pod` lets try again and make sure we get a deployment.

1. Delete the original pingpong:

```execute
kubectl delete deployment pingpong || \
  kubectl delete pod pingpong
```

2. Create a deployment for pingpong:


```execute
kubectl create deployment pingpong --image=jpetazzo/ping
```

3. Check its running:

```execute
kubectl get all
```