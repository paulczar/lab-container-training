Running our first containers on Kubernetes

We are going to run a pod, and in that pod there will be a single container

In that container in the pod, we are going to run a simple ping command

Sounds simple enough, right?

Except ... that the kubectl run command changed in Kubernetes 1.18!

1. Check which version of Kubernetes we're running

```execute
kubectl version
```

*Look at the Server Version in the second part of the output*