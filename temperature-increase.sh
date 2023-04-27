#!/bin/bash
KUBECONFIG=~/microshift-kubeconfig

oc apply -k kubernetes/sensors/patch
oc delete pod -l kind=sensors -n devconf-demo