In Kubernetes `Deployments` manage `ReplicaSets` which manage `Pods`.

Each adds more functionality to the last.

Deployments manage the full lifecycle of your application (`Pod`) by controlling upgrades and scaling of it.

Since `kubectl run` is either deprecated or only creates a `Pod` lets try again and make sure we get a deployment.

1. Create a deployment for pingpong

```execute
kubectl create deployment pingpong --image=jpetazzo/ping
```

2. Check the resources that were created

```execute
kubectl get all
```