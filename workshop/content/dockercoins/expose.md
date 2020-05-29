We need to `expose` services for the microservices to see eachother via DNS / ClusterIP.

In order to function correctly `hasher`, `redis`, and `rng` need to have services so the other applications can connect to them.

1. Expose the services

```execute
kubectl expose deploy/webui --type=LoadBalancer --port=80
kubectl expose deployment redis --port 6379
kubectl expose deployment rng --port 80
kubectl expose deployment hasher --port 80
```

*Note: we expose webui as a LoadBalancer so we can access it later.*
