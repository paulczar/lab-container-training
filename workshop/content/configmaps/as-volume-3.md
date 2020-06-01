The load balancer will send:

* half of the connections to Google
* the other half to IBM


1. Test the HAProxy Pod

```execute
kubectl exec shpod -- \
  /bin/sh -c "for i in 1 2 3; do curl -s $IP; done"
```

*We should see connections served by Google, and others served by IBM.
(Each server sends us a redirect page. Look at the URL that they send us to!)*