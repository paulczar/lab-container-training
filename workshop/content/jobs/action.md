
Our Job will create a Pod named flipcoin-xxxxx

If the Pod succeeds, the Job stops

If the Pod fails, the Job creates another Pod

1. Check the status of the Pod(s) created by the Job:

```execute
kubectl get pods --selector=job-name=flipcoin
```
