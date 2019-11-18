#!/bin/bash
#kubectl expose deploy prometheus-operator-operator -n monitor --port=9999 --name=prom-ext --type=LoadBalancer
kubectl expose pod prometheus-prometheus-operator-prometheus-0 -n monitor --name=prom-ext --port=9090 --target-port=9090 --type=LoadBalancer
