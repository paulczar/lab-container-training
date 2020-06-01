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
