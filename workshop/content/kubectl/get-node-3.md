It's super easy to build custom reports

1. Show the capacity of all our nodes as a stream of JSON objects:

```execute
kubectl get nodes -o json |
        jq ".items[] | {name:.metadata.name} + .status.capacity"
```