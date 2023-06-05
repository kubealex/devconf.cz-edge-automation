#!/bin/bash
KUBECONFIG=$(pwd)/kubeconfig
export KUBECONFIG=$(pwd)/kubeconfig

cat << EOF | oc apply -f -
apiVersion: v1
kind: Namespace
metadata:
  labels:
    pod-security.kubernetes.io/audit: privileged
    pod-security.kubernetes.io/audit-version: latest
    pod-security.kubernetes.io/enforce: privileged
    pod-security.kubernetes.io/enforce-version: latest
    pod-security.kubernetes.io/warn: privileged
    pod-security.kubernetes.io/warn-version: latest
  name: devconf-demo
EOF
oc adm policy add-scc-to-user -z eda-admin privileged -n devconf-demo
oc apply -k kubernetes
