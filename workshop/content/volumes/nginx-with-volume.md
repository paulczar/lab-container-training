A basic nginx Pod with a volume

1. Create the Pod

```execute
cat examples/volumes/nginx-2-with-volume.yaml
kubectl apply -f !*
```

2. Get its IP Address

```execute
IPADDR=$(kubectl get pod nginx-with-volume -o jsonpath={.status.podIP})
```

3. Send a request with curl

```execute
kubectl run alpine -i --tty --image=alpine --restart=Never --rm -- wget -qO - $IPADDR
```

*(We should now see a "403 Forbidden" error page.)*