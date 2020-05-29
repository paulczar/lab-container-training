

We will now send a few HTTP requests to our pods

But first, we need to do it from *inside* the cluster in order to access `ClusterIP` services.

1. Let's obtain the IP address that was allocated for our service, programmatically:

```execute
IP=$(kubectl get svc httpenv -o json | jq -r '.spec.clusterIP')
```

2. Run a Pod that we can connect to and run shell commands:

```execute
kubectl run shpod --image=jpetazzo/shpod --restart=Never -- -c "sleep 4800"
```

*This Pod will live for 4800 seconds before exiting. Which means we can re-use it throughout the workshop.*
