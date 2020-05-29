Just like docker logs, kubectl logs supports convenient options:

* -f/--follow to stream logs in real time (à la tail -f)
* --tail to indicate how many lines you want to see (from the end)
* --since to get logs only after a given timestamp


1. Combine the `--tail` and `--follow` arguments to only stream new logs:

```execute
kubectl logs deploy/pingpong --tail 1 --follow
```

**Stop the stream with Ctrl-C.**