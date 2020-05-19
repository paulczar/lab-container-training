Most Kubernetes resources can have *labels* and *annotations*

Both labels and annotations are arbitrary strings

(with some limitations that we'll explain in a minute)

Both labels and annotations can be added, removed, changed, dynamically

This can be done with:

* the `kubectl edit` command
* the `kubectl label` and `kubectl annotate`
* ... many other ways! (`kubectl apply -f`, `kubectl patch`, ...)
