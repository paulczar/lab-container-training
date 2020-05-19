Let's create a simple job to be executed every three minutes

Careful: make sure that the job terminates!

(The Cron Job will not hold if a previous job is still running)

CronJobs in Kubernetes follow the same ["* * * * *"](https://en.wikipedia.org/wiki/Cron#Overview) scheduling pattern as cronjob in Linux.

1. Create the Cron Job:

```execute
kubectl create cronjob every3mins --schedule="*/3 * * * *" \
        --image=alpine -- sleep 10
```

2. Check the resource that was created:

```execute
kubectl get cronjobs
```

3. Check the Jobs that are created:

```execute
kubectl get jobs
```

*It will take a few minutes before the first job is scheduled.*