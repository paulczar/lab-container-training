
Rolling out the new `worker` service

1. Let's monitor what's going on by running the following in the second terminal:

```execute-2
watch kubectl get deployment,rs,pod -l app=worker
```

2. Update our application to by changing the image version:

```execute
kubectl set image deploy worker worker=dockercoins/worker:v0.2
```