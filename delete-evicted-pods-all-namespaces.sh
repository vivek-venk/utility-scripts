#!/bin/sh
# Delete evicted pods from all namespaces

# To retrieve all evicted pods from all namespaces
kubectl get pods --all-namespaces | grep Evicted | awk '{print $2 " --namespace=" $1}' 

# delete all evicted pods from all namespaces
kubectl get pods --all-namespaces | grep Evicted | awk '{print $2 " --namespace=" $1}' | xargs kubectl delete pod

# delete all containers in ImagePullBackOff state from all namespaces
kubectl get pods --all-namespaces | grep 'ImagePullBackOff' | awk '{print $2 " --namespace=" $1}' | xargs kubectl delete pod

# delete all containers in ImagePullBackOff or ErrImagePull or Evicted state from all namespaces
kubectl get pods --all-namespaces | grep -E 'ImagePullBackOff|ErrImagePull|Evicted' | awk '{print $2 " --namespace=" $1}' | xargs kubectl delete pod

# To get the count of pods running for a namespace
kubectl get pods --all-namespaces > test.txt
cat test.txt | cut -d" " -f1 | uniq -c

# To get the Information of the cluster
kubectl cluster-info

# To get health status for your node 
kubectl get componentstatus