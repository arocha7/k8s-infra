# InfluxDB

## Deployment

* CLI deployment

```
kubectl create deployment influxdb --image=docker.io/influxdb:latest # 1.7.9
```

* YAML Deployment

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: influxdb-deployment
  labels:
    app: influxdb
spec:
  replicas: 1
  selector:
    matchLabels:
      app: influxdb
  template:
    metadata:
      labels:
        app: influxdb
    spec:
      containers:
      - name: influxdb
        image: influxdb:latest
        ports:
        - containerPort: 8086
```

Check InfluxDB 

```
kubectl get deploy,pod 
```

# Configure InfluxDB credentials

* CLI

```
kubectl create secret generic influxdb-creds \
  --from-literal=INFLUXDB_DATABASE=tango \
  --from-literal=INFLUXDB_USERNAME=root \
  --from-literal=INFLUXDB_PASSWORD=root \
  --from-literal=INFLUXDB_HOST=influxdb
```

# Expose internal IP (for Grafana, ex)

* CLI

```
kubectl expose deployment influxdb-deployment --port=8086 --target-port=8086 --protocol=TCP --type=ClusterIP
```

* YAML

```
---
apiVersion: v1
kind: Service
metadata:
  name: influxdb
  namespace: default
spec:
  selector:
    app: influxdb
  type: ClusterIP
  ports:
    - port: 8086
      targetPort: 8086
```
