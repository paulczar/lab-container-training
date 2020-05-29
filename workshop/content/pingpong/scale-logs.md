What happens if we try kubectl logs now that we have multiple pods?

1. View the last 3 lines of the logs:

```execute
kubectl logs deploy/pingpong --tail 3
```

`kubectl logs` will warn us that multiple pods were found.

It is showing us only one of them.

We'll see later how to address that shortcoming.
