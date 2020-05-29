In the `kube-system` namespace, there should be a service named `kube-dns`

This is the internal DNS server that can resolve service names

The default domain name for the service we created is `<namespace>.svc.cluster.local` (unless you deployed to a namespace other than default)

1. Resolve the cluster IP for the httpenv service:

```execute
kubectl exec shpod -- nslookup httpenv
```
