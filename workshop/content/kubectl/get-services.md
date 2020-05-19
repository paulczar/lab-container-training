
A service is a stable endpoint to connect to "something"

*(In the initial proposal, they were called "portals")*

1. List the services in the default namespace:

```execute
kubectl -n default get services
```

2. Connect to the `kubernetes` service:

```execute
curl -k https://$(kubectl -n default get service \
    kubernetes -o json | jq -r .spec.clusterIP)
```
