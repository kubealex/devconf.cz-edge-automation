#!/bin/bash
KUBECONFIG=$(pwd)/kubeconfig
export KUBECONFIG=$(pwd)/kubeconfig

oc apply -k kubernetes/sensors/temp-reset
oc delete pod -l kind=sensors -n devconf-demo
