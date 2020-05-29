By default, kubectl logs shows us the output of a single Pod

1. Try to check the output of the Pods related to a Deployment

```execute
kubectl logs deploy/pingpong --tail 1 --follow
```

*`kubectl logs` only shows us the logs of one of the Pods.*

press CTRL-C to exit.
