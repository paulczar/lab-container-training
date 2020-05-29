We should run the git clone as a `initContainer`

1. Watch the pods in the second terminal 
*(this should still be running from earlier*)

```copy
watch kubectl get pods -o wide
```

2. Create the pod

```execute
cat examples/volumes/nginx-4-with-init.yaml
kubectl apply -f !*
```

Wait until it shows as `READY`

3. Access it
```execute
kubectl get pod nginx-with-init -o jsonpath={.status.podIP}
IP=$(!!)
kubectl run shpod -i --tty --image=jpetazzo/shpod \
  --restart=Never --rm -- \
  /bin/sh -c "while ! wget -q -O - $IP; do sleep 1; done"
```
