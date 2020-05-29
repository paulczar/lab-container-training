We can now connect to the EXTERNAL-IP of the allocated load balancer

1. Get the IP address

```execute
kubectl get svc webui -o jsonpath='{.status.loadBalancer.ingress[0].ip}'
```

2. Open a browser and point it at the provided IP.
