

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
