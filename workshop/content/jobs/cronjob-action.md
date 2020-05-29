At the specified schedule, the Cron Job will create a Job

The Job will create then a Pod
The Job will make sure that the Pod completes
*(re-creating another one if it fails, for instance if its node fails)*


1. Check the Jobs that are created

```execute
kubectl get jobs
```

*It will take a few (3!) minutes before the first job is scheduled.*