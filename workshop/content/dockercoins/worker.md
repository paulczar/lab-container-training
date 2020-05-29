The worker has an infinite loop, that retries 10 seconds after an error

1. Stream the worker's logs

```execute
kubectl logs deploy/worker --follow
```

Wait for the `webui` service to get an `EXTERNAL-IP`.  You'll see it in the watch command output in the second terminal window.

4. Get the IP address

```execute
kubectl get svc webui -o jsonpath='{.status.loadBalancer.ingress[0].ip}'
```

5. Open a browser and point it at the provided IP.
