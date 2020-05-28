Config Maps are a Kubernetes resources for storing configuration information.

Conceptually a Config Map is a series of key/value pairs

```yaml
data:
  foo: bar
  woo: tar
```

These can be injected into a Pod as Enviroment Variables or as Files in a volume.

If the latter, the key becomes the filename and the value the file contents.
