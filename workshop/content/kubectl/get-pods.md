Containers are managed by *pods*

A Pod is a group of containers that run on the same node and share resources such as RAM, CPU, Network, and Volumes.

1. List all running pods.

```execute
kubectl get pods
```

You're not running any pods yet ... but somebody else might be.

Namespaces are used to separate workloads (tenancy).

We can see resources across all namespaces with `--all-namespaces`

2. List all running pods in all namespaces:


```execute
kubectl get pods --all-namespaces
```

*You could have also run `kubectl get pods -A`.*

You can also look at resources for a specific namespace.

3. List all running pods in the `kube-system` namespace:

```execute
kubectl get pods --namespace=kube-system
```