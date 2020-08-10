We already have manifests written for `dockercoins` which can be be found in `examples/dockercoins/k8s/dockercoins.yaml`.

1. Open `examples/dockercoins/k8s/dockercoins.yaml` with the built in text editor (or just `cat` it)

```execute
cat examples/dockercoins/k8s/dockercoins.yaml
```

2. Apply the manifest

```execute
kubectl apply -f examples/dockercoins/k8s
```

*Note: if the path given to `kubectl apply -f` is a directory, all manifests in that directory will be applied.*

*Additional note: You'll see k8s warn you about this, it's ok to ignore.*
```
Warning: kubectl apply should be used on resource created by either kubectl create --save-config or kubectl apply
deployment.apps/hasher configured
Warning: kubectl apply should be used on resource created by either kubectl create --save-config or kubectl apply
service/hasher configured
Warning: kubectl apply should be used on resource created by either kubectl create --save-config or kubectl apply
deployment.apps/redis configured
Warning: kubectl apply should be used on resource created by either kubectl create --save-config or kubectl apply
service/redis configured
Warning: kubectl apply should be used on resource created by either kubectl create --save-config or kubectl apply
deployment.apps/rng configured
Warning: kubectl apply should be used on resource created by either kubectl create --save-config or kubectl apply
service/rng configured
Warning: kubectl apply should be used on resource created by either kubectl create --save-config or kubectl apply
deployment.apps/webui configured
Warning: kubectl apply should be used on resource created by either kubectl create --save-config or kubectl apply
service/webui configured
Warning: kubectl apply should be used on resource created by either kubectl create --save-config or kubectl apply
deployment.apps/worker configured
```
