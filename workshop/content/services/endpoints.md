A service has a number of "endpoints"

Each endpoint is a host + port where the service is available

The endpoints are maintained and updated automatically by Kubernetes

1. Check the endpoints that Kubernetes has associated with our `httpenv` service:

```execute
kubectl describe service httpenv
```

In the output, there will be a line starting with Endpoints:.

That line will list a bunch of addresses in `host:port` format.
