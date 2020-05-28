We need to `expose` services for the microservices to see eachother via DNS / ClusterIP.

In order to function correctly `hasher`, `redis`, and `rng` need to have services so the other applications can connect to them.

1. Expose the services

```execute
kubectl expose deployment redis --port 6379
kubectl expose deployment rng --port 80
kubectl expose deployment hasher --port 80
kubectl expose deploy/webui --type=LoadBalancer --port=80
```

*Note: we expose webui as a LoadBalancer so we can access it later.*

2. Check that `worker` is working now:

```execute
kubectl logs deploy/worker --follow
```

Wait for the `webui` service to get an `EXTERNAL-IP`.  You'll see it in the watch command output in the second terminal window.

4. Get the IP address

```execute
kubectl get svc webui -o jsonpath='{.status.loadBalancer.ingress[0].ip}'
```

5. Open a browser and point it at the provided IP.
