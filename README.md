LAB - Container Training
========================

## Deploy

make sure you have an ingress that supports websocket, contour works great:

```bash
kubectl apply -f https://projectcontour.io/quickstart/contour.yaml
```


Deploy Operator:

*for now using create not apply, we want to roll the whole infra, not update*

```bash
kubectl create -k "github.com/eduk8s/eduk8s?ref=master"
kubectl set env deployment/eduk8s-operator -n eduk8s \
  INGRESS_DOMAIN=eduk8s.34.71.25.210.xip.io
```

Deploy Workshop:
```bash
kubectl create -k "github.com/paulczar/lab-container-training?ref=master"
```

## Cleanup

```bash
kubectl delete -k .
kubectl delete -k "github.com/eduk8s/eduk8s?ref=master"
```


## Import slides into eduk8s

not working real good, ignore


## How to build a container.training workshop for eduk8s

> Note: this is a quick and dirty POC

Clone container training (gitignore should stop it being commited back up):

```bash
git clone --single-branch --branch fullday-namespaced \
    https://github.com/paulczar/container.training.git
```

```bash
/scripts/build_workshop.sh container.training/slides/kube-fullday-namespaced.yml
```

We're not processing the manifest variables into the workshop markdown so you'll want to run the following and modify yourself:

```bash
grep -r '@@' workshop/content
```

You can run some commands like this to speed it up:

```bash
find ./workshop/content -name '*.md' -exec sed -i 'sX@@GITREPO@@Xgithub.com/jpetazzo/container.trainingX' {} \;
```

The workshop can let the user auto-run commands that are surrounded by '```execute' ... so lets try and do that across our slides:

```bash
find ./workshop/content -name '*.md' -exec sed -i 's/```bash/```execute/' {} \;
```
