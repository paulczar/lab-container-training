## Rolling out something invalid

What happens if we make a mistake?

1. Update `worker` by specifying a non-existent image

```execute
kubectl set image deploy worker worker=dockercoins/worker:v0.3
```

2. Check what's going on
```execute
kubectl rollout status deploy worker
```
