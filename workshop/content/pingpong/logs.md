Let's use the kubectl logs command

We will pass either a pod name, or a type/name

*If we specify a deployment or replica set, it will get the first pod in it.*

Unless specified otherwise, it will only show logs of the first container in the pod (Good thing there's only one in ours!)

1. View the logs of our Pod:

```execute
kubectl logs deploy/pingpong
```
