The missing revisions are stored in another annotation:

```
deployment.kubernetes.io/revision-history
```

which is not shown in `kubectl rollout history`.

We can use `kubectl rollout undo` with a revision number

1. Roll back to the "known good" deployment verison

```execute
kubectl rollout undo deployment worker --to-revision=1
```
