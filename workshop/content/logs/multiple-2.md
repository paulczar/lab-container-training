When we specify a deployment name, only one single pod's logs are shown.

We can view the logs of multiple pods by specifying a selector.

If we check the pods created by the deployment, they all have the label `app=pingpong`.

*(`app` is a default label that gets added when using `kubectl create deployment`)*


1. View the last line of log from all pods with the `app=pingpong` label:

```execute
kubectl logs -l app=pingpong --tail 1
```
