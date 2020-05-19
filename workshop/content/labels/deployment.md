Let's see what we get when we create a Deployment

1. Create a Deployment:

```execute
kubectl create deployment web --image=nginx
```

2. Look at its annotations and labels:

```
kubectl describe deployment web
```

**We see one label:**

```
Labels: app=web
```

This was added by `kubectl create deployment`

**And one annotation:**

```
Annotations: deployment.kubernetes.io/revision: 1
```

This is used by the Deployment Controller to keep track of successive versions when doing rolling updates.
