We are going to run a Docker registry on a custom port by passing those details into a ConfigMaps and loading that up as an Environment Variable.


1. Our configmap will have a single key, `http.addr`

```execute
kubectl create configmap registry --from-literal=http.addr=0.0.0.0:80
```

2. Check our configmap

```execute
kubectl get configmap registry -o yaml
```

3. Create a registry Pod

```execute
cat examples/config/registry.yaml
kubectl apply -f !*
```

4. Check the IP address allocated to the pod:

```execute
kubectl get pod registry -o wide
IP=$(kubectl get pod registry -o json | jq -r .status.podIP)
```

5.Confirm that the registry is available on port 80:

```execute
kubectl run alpine -i --tty --image=alpine --restart=Never \
  --rm -- wget -q -O - $IP/v2/_catalog
```
