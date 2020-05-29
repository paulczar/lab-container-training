We can list successive versions of a Deployment with `kubectl rollout history`

1. Look at our successive versions

```execute
kubectl rollout history deployment worker
```

We don't see all revisions.

We might see something like 1, 4, 5.

(Depending on how many "undos" we did before.)