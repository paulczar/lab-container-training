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
  INGRESS_DOMAIN=eduk8s.34.68.224.58.xip.io
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


## Developing

```bash
docker run -ti --rm -p 10080:10080 -e ENABLE_EDITOR=true -v \
  $(pwd):/home/eduk8s quay.io/eduk8s/workshop-dashboard:master
```

```bash
docker build -t paulczar/lab-container-training:master .
docker push paulczar/lab-container-training:master
```
