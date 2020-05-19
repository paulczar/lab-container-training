In this section, we assume that we have a Deployment with multiple Pods

(e.g. `pingpong` that we scaled to at least 3 pods)

We will highlights some of the limitations of `kubectl logs`

1. Check that we still have our `pingpong` deployment with three pods:

```execute
kubectl get pods -l app=pingpong
```

*If not, hopefully you remember how to create a deployment*
