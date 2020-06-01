kubectl get can output JSON, YAML, or be directly formatted

1. Give us more info about the nodes

```execute
kubectl get nodes -o wide
```

2. Let's have some YAML

```execute
kubectl get no -o yaml
```

*See that `kind: List` at the end? It's the type of our result!*
