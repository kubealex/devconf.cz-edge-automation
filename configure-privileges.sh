#!/bin/bash
KUBECONFIG=~/microshift

cat << EOF | oc apply -f -
apiVersion: v1
kind: Namespace
metadata:
  labels:
    pod-security.kubernetes.io/audit: privileged
    pod-security.kubernetes.io/audit-version: v1.24
    pod-security.kubernetes.io/enforce: privileged
    pod-security.kubernetes.io/enforce-version: v1.24
    pod-security.kubernetes.io/warn: privileged
    pod-security.kubernetes.io/warn-version: v1.24
  name: devconf-demo
EOF
oc adm policy add-scc-to-user -z eda-admin privileged -n devconf-demo
