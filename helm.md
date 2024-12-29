# check
helm template k8sforjava

# setup and uninstall
helm install k8sforjava ./k8sforjava
helm uninstall k8sforjava

# package everything
helm package ./k8sforjava