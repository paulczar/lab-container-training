A basic nginx Pod with no volumes

1. Create a basic nginx pod without any volumes

```execute
cat examples/volumes/nginx-1-without-volume.yaml
kubectl apply -f !*
```

2. Get its IP Address

```execute
kubectl get pod nginx-without-volume -o jsonpath={.status.podIP}
IPADDR=$(!!)
```

*`IPADDR=$(!!)` will take the last command and load its result into the `IPADDR` environment variable*

3. Send a request with curl

```execute
kubectl run alpine -i --tty --image=alpine --restart=Never --rm -- wget -qO - $IPADDR
```

*Hey look, we just ran a one off pod that cleaned up after itself.  Neat!*
