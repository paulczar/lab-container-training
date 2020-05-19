Running our first containers on Kubernetes

We are going to run a pod, and in that pod there will be a single container

In that container in the pod, we are going to run a simple ping command

Sounds simple enough, right?

Except ... that the kubectl run command changed in Kubernetes 1.18!

1. Check which version of Kubernetes we're running

```execute
kubectl version
```

2. Run pingpong and tell it to ping `localhost`:

```execute
kubectl run pingpong --image alpine ping 127.0.0.1
```

In Kubernetes 1.18+, the output tells us that a Pod is created:

```console
pod/pingpong created
```

In Kubernetes 1.17-, the output is much more verbose:

```console
kubectl run --generator=deployment/apps.v1 is DEPRECATED 
and will be removed in a future version. Use kubectl run 
--generator=run-pod/v1 or kubectl create instead.
deployment.apps/pingpong created
```

`
