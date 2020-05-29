A basic nginx Pod with a volume

1. Create the Pod

```execute
cat examples/volumes/nginx-2-with-volume.yaml
kubectl apply -f !*
```

2. Get its IP Address

```execute
kubectl get pod nginx-with-volume -o jsonpath={.status.podIP}
IPADDR=$(!!)
```

3. Send a request with curl

```execute
kubectl run shpod -i --tty --image=jpetazzo/shpod \
  --restart=Never --rm -- curl -s $IPADDR
```

*(We should now see a "403 Forbidden" error page.)*