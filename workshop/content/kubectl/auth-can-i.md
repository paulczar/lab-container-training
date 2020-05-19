You are restricted to a subset of Kubernetes resources in your own namespace. Just like in a real world enterprise cluster.

You can ask Kubernetes if you have permission to perform certain actions.

1. Can I create pods?

```execute
kubectl auth can-i create pods
```
2. Can I delete namespaces?

```execute
kubectl auth can-i delete namespaces
```