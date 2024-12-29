mkdir helm-repo
mv k8sforjava-0.1.0.tgz helm-repo/
helm repo index helm-repo --url https://vincentgwzhang.github.io/k8sforjava
git init
git add .
git commit -m "Initial commit"
git push origin master
