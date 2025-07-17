sudo kubectl set image daemonset.apps/gpu-operator-node-feature-discovery-worker worker=k8s.mirror.nju.edu.cn/nfd/node-feature-discovery:v0.17.2 --namespace=gpu
sudo kubectl set image deployment.apps/gpu-operator-node-feature-discovery-gc gc=k8s.mirror.nju.edu.cn/nfd/node-feature-discovery:v0.17.2 --namespace=gpu
sudo kubectl set image deployment.apps/gpu-operator-node-feature-discovery-master master=k8s.mirror.nju.edu.cn/nfd/node-feature-discovery:v0.17.2 --namespace=gpu

sudo kubectl get daemonset.apps/gpu-operator-node-feature-discovery-worker -o jsonpath='{.spec.template.spec.containers[*].image}' -n gpu
echo
