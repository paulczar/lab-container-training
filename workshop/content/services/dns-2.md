
When accessing `httpenv` from another Pod you can use DNS: `httpenv`, `httpenv.<namespace>` or `httpenv.<namespace>.svc.cluster.local`

2. curl the service from its name:

```execute
kubectl exec shpod -- curl -s http://httpenv:8888/ | jq -r .HOSTNAME
```

3. curl the service from its fqdn:

```execute
NS=$(kubectl get svc httpenv -o json | jq -r  '.metadata.namespace')
kubectl exec shpod -- curl -s http://httpenv.$NS.svc.cluster.local:8888/ | \
  jq -r .HOSTNAME
```
