`kubectl describe` is a way to get a [sort of] human readable description of a Kubernetes resource.

1. Look at the information available for all nodes:

```execute
kubectl describe nodes
```

That was still too much information!

2. Look at just one of the nodes:

```execute
kubectl describe $(kubectl get nodes -o name | head -n 1)
```

*$() tells linux to run the command and use its output as an argument for the primary command.*