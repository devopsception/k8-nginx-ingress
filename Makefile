#clusteramin user
include .make/Makefile.inc
CLUSTER_ADMIN  ?=
export

install: guard-CLUSTER_ADMIN
	kubectl create clusterrolebinding cluster-admin-binding --clusterrole cluster-admin --user $(CLUSTER_ADMIN)
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.35.0/deploy/static/provider/cloud/deploy.yaml
	helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
	helm install ingress ingress-nginx/ingress-nginx
	kubectl apply -f manifests/

delete:
	kubectl delete clusterrolebinding cluster-admin-binding 
	kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.35.0/deploy/static/provider/cloud/deploy.yaml
	helm repo remove ingress-nginx https://kubernetes.github.io/ingress-nginx
	helm delete ingress ingress-nginx/ingress-nginx
	kubectl delete -f manifests/