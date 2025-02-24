#!/bin/bash
# how to install zabbix by helm on k8s

kubectl apply -f ./pv.yaml

kubectl create namespace monitoring 
helm install zabbix ./ -n monitoring -f docs/example/kind/values.yaml
