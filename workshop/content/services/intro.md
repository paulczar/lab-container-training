* Services give us a *stable endpoint* to connect to a pod or a group of pods

* An easy way to create a service is to use `kubectl expose`

* If we have a deployment named `my-little-deploy`, we can run:

```
kubectl expose deployment my-little-deploy --port=80
```

... and this will create a service with the same name (`my-little-deploy`)

* Services are automatically added to an internal DNS zone

(in the example above, another Pod could connect to http://my-little-deploy/)
