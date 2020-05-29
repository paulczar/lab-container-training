

When specifying a selector, we can omit the value for a label

This will match all objects having that label (regardless of the value)

Everything created with `kubectl run` has a label `run`

Everything created with `kubectl create deployment` has a label `app`

We can use that property to view the logs of all the pods created with `kubectl create deployment`


1. View the logs for all the things started with `kubectl create deployment`:

```execute
stern -l app --tail 1
```
