#!/bin/bash
KUBECONFIG=$(pwd)/kubeconfig
export KUBECONFIG=$(pwd)/kubeconfig

oc apply -k kubernetes/sensors/patch
oc delete pod -l kind=sensors -n devconf-demo
