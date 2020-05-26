

We could use `kubectl edit deployment worker` to make more detailed changes to our deployment.

We could also use `kubectl patch` with the exact YAML for our change.

1. Apply all our changes and wait for them to take effect

```execute
kubectl patch deployment worker -p "
spec:
  template:
    spec:
      containers:
      - name: worker
        image: dockercoins/worker:v0.1
  strategy:
    rollingUpdate:
      maxUnavailable: 0
      maxSurge: 1
  minReadySeconds: 10
"
```

2. Check the rollout status

```execute
kubectl rollout status deployment worker
```

3. Remind yourself of the update strategy

```execute
kubectl get deploy -o json worker |
      jq "{name:.metadata.name} + .spec.strategy.rollingUpdate"
```
