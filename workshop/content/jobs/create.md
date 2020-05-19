Creating a Job

A Job will create a Pod

If the Pod fails, the Job will create another one

The Job will keep trying until:

* either a Pod succeeds,

* or we hit the *backoff limit* of the Job (default=6)

1. Create a Job that has a 50% chance of success:

```execute
kubectl create job flipcoin --image=alpine -- sh -c 'exit $(($RANDOM%2))'
```

Our Job will create a Pod named flipcoin-xxxxx

If the Pod succeeds, the Job stops

If the Pod fails, the Job creates another Pod

2. Check the status of the Pod(s) created by the Job:

```execute
kubectl get pods --selector=job-name=flipcoin
```
