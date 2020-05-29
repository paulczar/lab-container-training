

If we see successive versions as a stack:

* kubectl rollout undo doesn't "pop" the last element from the stack
* it copies the N-1th element to the top

Multiple "undos" just swap back and forth between the last two versions!


4. Go back to `v0.2` again:

```execute
kubectl rollout undo deployment worker
```
