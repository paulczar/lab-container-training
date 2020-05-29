- A *selector* is an expression for matching labels

- It will restrict a command to the objects matching *at least* all these labels

- We can use a Selector to look up the Pod that was created and check it too


1. Find the name of the Pod

```execute
kubectl get pods --selector "app=web"
```

2. Display its information:

```execute
kubectl describe \
  $(kubectl get pods --selector app=web -o name | head -1)
```

**We see two labels:**

```
Labels: app=web
        pod-template-hash=xxxxxxxxxx
```

`app=web` comes from `kubectl create deployment` too

`pod-template-hash` was assigned by the Replica Set

*(when we will do rolling updates, each set of Pods will have a different hash)*

**There are no annotations:**

```
Annotations: <none>
```
