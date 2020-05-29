These revisions correspond to our Replica Sets

This information is stored in the Replica Set annotations.

1. Check the annotations for our replica sets

```execute
kubectl describe replicasets -l app=worker | grep -A3 ^Annotations
```
