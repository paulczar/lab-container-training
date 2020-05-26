Deployment revisions correspond to our Replica Sets.

We can list successive versions of a Deployment with `kubectl rollout history`

1. Look at our successive versions

```execute
kubectl rollout history deployment worker
```

These revisions correspond to our Replica Sets

This information is stored in the Replica Set annotations.


2. Check the annotations for our replica sets


```execute
kubectl describe replicasets -l app=worker | grep -A3 ^Annotations
```

The missing revisions are stored in another annotation `deployment.kubernetes.io/revision-history` which are not shown in `kubectl rollout history`.

We can use `kubectl rollout undo` with a revision number

3. Roll back to the "known good" deployment verison

```execute
kubectl rollout undo deployment worker --to-revision=1
```
