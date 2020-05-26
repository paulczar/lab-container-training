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

3. Change the watch in the second terminal for all resources with the `app=worker` selector:

```copy
watch kubectl get deployment,rs,pod -l app=worker
```

4. Update our application to by changing the image version:

```execute
kubectl set image deploy worker worker=dockercoins/worker:v0.2
```