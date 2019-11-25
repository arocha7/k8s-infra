# Global access to Dashboard

## sa-dash-admin.yaml

This YAML definition creates a service account 'dash-admin' on the namespace 'kube-system'


## crb-dash-admin.yaml

This CRB associates the new service account 'dash-admin' to the native 'cluster-admin' cluster role


# Specific access to Dashboard

## rl-tng-dash.yaml

This role gives access to proxy service


## rb-tng-dash.yaml

This bind associates a service account (for instance 'tango') with the Dashboard enabled role

