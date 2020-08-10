A basic nginx Pod with no volumes

1. Create a basic nginx pod without any volumes

```execute
cat examples/volumes/nginx-1-without-volume.yaml
kubectl apply -f !*
```

*What does `!*` do ?*

2. Get its IP Address

```execute
kubectl get pod nginx-without-volume -o jsonpath={.status.podIP}
IPADDR=$(!!)
```

*What does `$(!!)` do ?*

3. Send a request

```execute
kubectl exec shpod -- curl -s $IPADDR
```
