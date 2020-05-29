By default `kubectl` uses the `default` namespace, or in the case of this workshop your own namespace.

We can see resources across all namespaces with `--all-namespaces`

1. List all running pods in all namespaces


```execute
kubectl get pods --all-namespaces
```

2. Since Kubernetes 1.14, we can also use -A as a shorter version

```execute
kubectl get pods -A
```
