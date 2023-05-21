#!/bin/bash
KUBECONFIG=~/microshift

oc apply -k kubernetes/sensors/patch
oc delete pod -l kind=sensors -n devconf-demo
