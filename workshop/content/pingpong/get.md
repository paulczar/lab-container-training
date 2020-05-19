1. Check what is running:

```execute
kubectl get all
``

Kubernetes 1.18+:

```console
NAME           READY   STATUS    RESTARTS   AGE
pod/pingpong   1/1     Running   0          9s
NAME                 TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
```

Kubernetes 1.17-:

```console
NAME                            READY   STATUS        RESTARTS   AGE
pod/pingpong-6ccbc77f68-kmgfn   1/1     Running       0          11s
NAME                 TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/pingpong   1/1     1            1           11s
NAME                                  DESIRED   CURRENT   READY   AGE
replicaset.apps/pingpong-6ccbc77f68   1         1         1       11s
```