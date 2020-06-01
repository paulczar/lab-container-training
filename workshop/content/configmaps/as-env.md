We are going to run a Docker registry on a custom port by passing those details into a ConfigMaps and loading that up as an Environment Variable.


1. Our configmap will have a single key, `http.addr`

```execute
kubectl create configmap registry --from-literal=http.addr=0.0.0.0:80
```

2. Check our configmap

```execute
kubectl get configmap registry -o yaml
```
