# check
helm template k8sforjava

# init
helm create k8sforjava


# setup and uninstall, the second "k8sforjava" is the chart folder
helm install k8sforjava ./k8sforjava
## optional
helm upgrade k8sforjava ./k8sforjava
helm uninstall k8sforjava

# package everything

## Make charts
cd kubernetes
helm package ./k8sforjava --destination ./helm-repo
helm repo index ./helm-repo --url https://vincentgwzhang.github.io/K8sForJava
Remember: check the url in index.yaml, it should exactly match

## Deploy charts
1. In the github repo, go to settings, and pages section, create repo pages
2. Get the folder which contains index.yaml url, here is https://vincentgwzhang.github.io/K8sForJava/kubernetes/helm-repo/
3. In the https://artifacthub.io/ , create a repository, and add above url.

## Publish
1. Install 
```shell
helm repo add k8sforjava https://vincentgwzhang.github.io/K8sForJava/kubernetes/helm-repo/
helm repo update

helm install <release-name> <repository-name>/<chart-name>
helm install k8sforjava k8sforjava/k8sforjava
```
2. Uninstall
```shell
helm uninstall k8sforjava
helm repo remove k8sforjava
helm repo update
```