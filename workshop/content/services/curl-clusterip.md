

We will now send a few HTTP requests to our pods

But first, we need to do it from *inside* the cluster. We'll explain why later.

1. Let's obtain the IP address that was allocated for our service, programmatically:

```execute
IP=$(kubectl get svc httpenv -o json | jq -r '.spec.clusterIP')
```

2. Run a Pod that we can connect to and run shell commands:

```execute
kubectl run shpod --image=jpetazzo/shpod --restart=Never -- -c "sleep 2400"
```

*This Pod will live for 2400 seconds (4 hours) before exiting. Which means we can re-use it throughout the workshop.*

3. Use curl to check the service is working:

```execute
kubectl exec shpod -- curl -s http://$IP:8888/
```

*`kubectl exec` lets you run a command inside a running Pod while still claiming that you should never `ssh` in devops.*

4. Too much output? Filter it with jq:

```execute
kubectl exec shpod -- curl -s http://$IP:8888/ | jq -r .HOSTNAME
```

5. Loop it 5 times:

```execute
for i in {1..5}; do
kubectl exec shpod -- curl -s http://$IP:8888/ | jq -r .HOSTNAME;
done
```
