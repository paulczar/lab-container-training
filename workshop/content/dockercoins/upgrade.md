Check current rollout settings

1. Show the rollout plan for our deployments

```execute
kubectl get deploy -o json |
        jq ".items[] | {name:.metadata.name} + .spec.strategy.rollingUpdate"
```

2. Scale out our worker deployment

```execute
kubectl scale deploy/worker --replicas=3
```