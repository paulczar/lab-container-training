LAB - Container Training
========================

## Deploy

make sure you have an ingress that supports websocket, contour works great:

```bash
kubectl apply -f https://projectcontour.io/quickstart/contour.yaml
```

nginx on GCP

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud/deploy.yaml
```

or nginx on AWS

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/aws/deploy.yaml
```

Deploy Operator:

*for now using create not apply, we want to roll the whole infra, not update*

```bash
kubectl create -k "github.com/eduk8s/eduk8s?ref=master"
kubectl set env deployment/eduk8s-operator -n eduk8s \
  INGRESS_DOMAIN=austin-devops.workshop.paulczar.wtf
```

Deploy Workshop:
```bash
kubectl create -k "github.com/paulczar/lab-container-training?ref=austin-devops"
```

## Cleanup

```bash
kubectl delete -k "github.com/paulczar/lab-container-training?ref=austin-devops"
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
