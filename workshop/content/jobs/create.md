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
