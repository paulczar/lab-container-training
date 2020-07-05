

The deployment pingpong watches its replica set

The replica set ensures that the right number of pods are running

What happens if pods disappear?

1. In the bottom terminal watch the list of pods:

```execute-2
watch kubectl get pods
```

2. Destroy one of the pods:

```execute
kubectl delete $(kubectl get pods -o name | head -1)
```

`kubectl delete pod` terminates the pod gracefully

(sending it the TERM signal and waiting for it to shutdown)

As soon as the pod is in "Terminating" state, the Replica Set replaces it

30 seconds later, when the grace period expires the pod is killed.
