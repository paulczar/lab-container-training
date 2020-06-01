
A service is a stable endpoint to connect to "something"

*(In the initial proposal, they were called "portals")*

1. List the services in the default namespace:

```execute
kubectl -n default get services
```

There is already one service in the `default` namespace on our cluster: the Kubernetes API itself.
