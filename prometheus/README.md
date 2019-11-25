# K8s Prometheus tutorial


## YAML based deployment



Credits to:
* [Binbin Wilson, Bangalore](https://github.com/bibinwilson/kubernetes-prometheus)
* [How to Setup Prometheus Monitoring On Kubernetes Cluster, DevopsCube](https://devopscube.com/setup-prometheus-monitoring-on-kubernetes/)
* [Running Prometheus on Kubernetes, Linux Academy](https://linuxacademy.com/blog/kubernetes/running-prometheus-on-kubernetes/)
* [Production grade Kubernetes Monitoring using Prometheus](https://medium.com/faun/production-grade-kubernetes-monitoring-using-prometheus-78144b835b60)



## HELM based deployment

[prometheus-operator](https://github.com/coreos/prometheus-operator)

NOTE: [Deprecated APIs Removed In 1.16: Here’s What You Need To Know](https://kubernetes.io/blog/2019/07/18/api-deprecations-in-1-16/)
* ./charts/prometheus-node-exporter/templates/psp.yaml
* ./charts/grafana/templates/tests/test-podsecuritypolicy.yaml
* ./charts/prometheus-node-exporter/templates/psp.yaml
* ./charts/grafana/templates/tests/test-podsecuritypolicy.yaml
* ./charts/prometheus-node-exporter/templates/daemonset.yaml
* ./templates/prometheus-operator/deployment.yaml
* ./charts/grafana/templates/deployment.yaml
* ./charts/kube-state-metrics/templates/deployment.yaml

Credits to:
* [Kubernetes Monitoring with Prometheus](https://dev.to/rayandasoriya/kubernetes-monitoring-with-prometheus-2l7k)


# Grafana admin password
prom-operator
