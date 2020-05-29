Wait for the `webui` service to get an `EXTERNAL-IP`

1. Watch `kubectl get svc` in the second terminal

```copy
watch kubectl get svc webui
```

*After a few minutes we should see an `EXTERNAL-IP` for the service.*
