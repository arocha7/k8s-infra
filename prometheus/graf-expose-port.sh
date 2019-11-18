#!/bin/bash
kubectl expose deploy prometheus-operator-grafana -n monitor --name=graf-ext --target-port=3000 --type=LoadBalancer
