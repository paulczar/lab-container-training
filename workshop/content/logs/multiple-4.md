
Let's see what happens if we try to stream the logs for more than 5 pods

1. Scale up our deployment:

```execute
kubectl scale deployment pingpong --replicas=8
```

2. Stream the logs:

```execute
kubectl logs -l app=pingpong --tail 1 -f
```

We see a message like the following one:

```
error: you are attempting to follow 8 log streams,
but maximum allowed concurency is 5,
use --max-log-requests to increase the limit
```
