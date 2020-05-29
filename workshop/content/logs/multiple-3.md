Can we stream the logs of all our pingpong pods?

1. Combine `-l` and `-f` flags:

```execute
kubectl logs -l app=pingpong --tail 1 -f
```

*Note: this is only possible since Kubernetes 1.14*