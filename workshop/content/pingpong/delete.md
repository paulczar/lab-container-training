Let's destroy that pingpong app that we created

Then we will use kubectl create deployment to re-create it

1. Delete the original pingpong:

```execute
kubectl delete deployment pingpong || \
  kubectl delete pod pingpong
```

*What does the `||` do?*