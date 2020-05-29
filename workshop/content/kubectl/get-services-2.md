A ClusterIP service is internal, available from the cluster only

This is useful for introspection from within containers

1. Connect to the `kubernetes` service:

```execute
curl -k https://$(kubectl -n default get service \
    kubernetes -o json | jq -r .spec.clusterIP)
```

*The command above should show an authentication error. Why?*

* You are only able to connect to this `clusterIP` service because your workshop session is running inside the cluster.

* From now on we'll use other methods to access internal IP addresses to simulate more real world scenarios.
