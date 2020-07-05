Let's share the volume with another container in the Pod.

- This one will be time-sensitive!

- We need to catch the Pod IP address *as soon as it's created*

- Then send a request to it *as fast as possible*

1. Watch the pods in the second terminal

```execute-2
watch kubectl get pods -o wide
```

2. Create the pod

```execute
cat examples/volumes/nginx-3-with-git.yaml
kubectl apply -f !*
```

3. As soon as we see its IP address, access it
```execute
kubectl wait pod/nginx-with-git --for condition=initialized
kubectl get pod nginx-with-git -o jsonpath={.status.podIP}
IP=$(!!)
kubectl exec shpod -- \
  /bin/sh -c "while ! curl -s $IP; do sleep 1; done"
```

*At first we should see "403 Forbidden", after a while it should show the HTML file from the Spoon-Knife repository.*
