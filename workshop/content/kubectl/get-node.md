Let's look at our Node resources with kubectl get!

1. Look at the composition of our cluster:

```execute
kubectl get node
```

2. Give us more info about the nodes:

```execute
kubectl get nodes -o wide
```

3. Let's have some YAML:

```execute
kubectl get no -o yaml
```

4. Show the capacity of all our nodes as a stream of JSON objects:

```execute
kubectl get nodes -o json |
        jq ".items[] | {name:.metadata.name} + .status.capacity"
```