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

3. Mount that file as a volume in a HAProxy Pod

```execute
cat examples/config/haproxy.yaml
kubectl apply -f !*
```

4. Check the IP address allocated to the Pod:

```execute
kubectl get pod haproxy -o wide
IP=$(kubectl get pod haproxy -o json | jq -r .status.podIP)
```

5. Test the HAProxy Pod:

```execute
kubectl run alpine -i --tty --image=alpine --restart=Never \
  --rm -- /bin/sh -c "for i in 1 2 3; do wget -q -O - $IP; done"

```
