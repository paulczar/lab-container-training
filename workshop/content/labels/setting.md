
The easiest method is to use `kubectl label` and `kubectl annotate`

1. Set a label on the web Deployment:

```execute
kubectl label deployment web color=blue
```

2. Check it out:

```execute
kubectl get deployment web -o json | jq -r .metadata.labels
```
