## Rollback like its 1999.

*"In devops there is no rollback we only roll forward."* - Some devops thort lord.

Maybe CI failed to push the `v0.3` image. In this case we'd just push it up and wait for the retry logic to sort itself out.

But we should probably perform a manual rollback and wait until we resolve the image problem (surprise updates are bad mmmkay).

1. Undo the latest change to the Deployment

```execute
kubectl rollout undo deploy worker
```

2. Check the status again

```execute
kubectl rollout status deploy worker
```

What happens if we want to roll back to `v0.1`?

3. Roll back again

```execute
kubectl rollout undo deployment worker
```

*Multiple "undos" just swap back and forth between the last two versions.*

4. Go back to `v0.2` again:

```execute
kubectl rollout undo deployment worker
```
