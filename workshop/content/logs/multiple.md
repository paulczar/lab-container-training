
Earlier we saw that, `kubectl logs` shows us the output of a single Pod.

1. Try to check the output of the Pods related to a Deployment:

```execute
kubectl logs deploy/pingpong --tail 1 --follow
```

*`kubectl logs` only shows us the logs of one of the Pods.*

press CTRL-C to exit.

By specifying a *selector* with the `kubectl logs` command it will show logs from all pods that match that *selector*.

2. View the last line of log from all pods with the `app=pingpong` label:

```execute
kubectl logs -l app=pingpong --tail 1
```

3. Combine `-l` and `-f` flags to stream the logs of all of our `pingpong` pods:

```execute
kubectl logs -l app=pingpong --tail 1 -f
```

*Note: this is only possible since Kubernetes 1.14*
