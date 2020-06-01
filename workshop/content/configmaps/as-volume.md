Let's create and ConfigMap containging a HAProxy config file.

1. Create a config map from `examples/config/haproxy.cfg`

```execute
cat examples/config/haproxy.cfg
kubectl create configmap haproxy --from-file=!*
```

2. Check the resultant configmap

```execute
kubectl get configmap haproxy -o yaml
```
