Now we can send a few HTTP requests to our Pods

1. Use curl to check the service is working:

```execute
kubectl exec shpod -- curl -s http://$IP:8888/
```

*`kubectl exec` lets you run a command inside a running Pod while still claiming that you should never `ssh` in devops.*

2. Too much output? Filter it with jq:

```execute
kubectl exec shpod -- curl -s http://$IP:8888/ | jq -r .HOSTNAME
```

3. Loop it 5 times:

```execute
for i in {1..5}; do
kubectl exec shpod -- curl -s http://$IP:8888/ | jq -r .HOSTNAME;
done
```
