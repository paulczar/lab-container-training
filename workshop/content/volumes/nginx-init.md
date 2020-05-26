We should run the git clone as a `initContainer`

1. Watch the pods in the second terminal

```copy
kubectl get pods -o wide --watch
```

2. Create the pod

```execute
cat examples/volumes/nginx-4-with-init.yaml
kubectl apply -f !*
```

Wait until it shows as `READY`

3. Access it
```execute
IP=$(kubectl get pod nginx-with-init -o jsonpath={.status.podIP})
kubectl run alpine -i --tty --image=alpine --restart=Never --rm -- while true; do wget -q -O - $IP; sleep 10; done
```
