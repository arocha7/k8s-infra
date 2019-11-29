# K8s Prometheus tutorial


## Helm-based deployment

This deployment process uses CoreOS [prometheus-operator](https://github.com/coreos/prometheus-operator) chart.

* Install 

```
$ helm install prometheus-operator stable/prometheus-operator -n monitoring
```

* Check

```
$ helm status prometheus-operator -n monitoring

$ kubectl --namespace monitoring get pods -l "release=prometheus-operator"

$ kubectl get deploy,pod,svc -n monitoring
```

* Client access

At your workstation:

* Prometheus: http://localhost:9090

```
$ kubectl port-forward -n monitoring prometheus-prometheus-operator-prometheus-0 9090
```

* AlertManager: http://localhost:9093

```
$ kubectl port-forward -n monitoring prometheus-prometheus-operator-prometheus-0 9090
```


* Grafana: http://localhost:3000

```
$ kubectl port-forward $(kubectl get  pods --selector=app=grafana -n  monitoring --output=jsonpath="{.items..metadata.name}") -n monitoring  3000
```


## YAML-based deployment

```
$ cd standalone
$ kubectl apply -f .
$ kubectl get deploy,pod,svc -n monitoring
```

Credits to:
* [Binbin Wilson, Bangalore](https://github.com/bibinwilson/kubernetes-prometheus)
* [How to Setup Prometheus Monitoring On Kubernetes Cluster, DevopsCube](https://devopscube.com/setup-prometheus-monitoring-on-kubernetes/)
* [Running Prometheus on Kubernetes, Linux Academy](https://linuxacademy.com/blog/kubernetes/running-prometheus-on-kubernetes/)
* [Production grade Kubernetes Monitoring using Prometheus](https://medium.com/faun/production-grade-kubernetes-monitoring-using-prometheus-78144b835b60)


# Grafana admin password
prom-operator
