deploy-gke:
	kubectl apply -f common/ns-and-sa.yaml
	kubectl apply -f common/default-server-secret.yaml
	kubectl apply -f common/nginx-config.yaml
	kubectl apply -f rbac/rbac.yaml
	kubectl apply -f deployment/nginx-ingress.yaml
	kubectl apply -f daemon-set/nginx-ingress.yaml
	kubectl apply -f service/loadbalancer.yaml
	kubectl get svc nginx-ingress --namespace=nginx-ingress

deploy-minikube:
	kubectl apply -f common/ns-and-sa.yaml
	kubectl apply -f common/default-server-secret.yaml
	kubectl apply -f common/nginx-config.yaml
	kubectl apply -f rbac/rbac.yaml
	kubectl apply -f deployment/nginx-ingress.yaml
	kubectl apply -f daemon-set/nginx-ingress.yaml
	kubectl apply -f service/nodeport.yaml
	kubectl get svc nginx-ingress --namespace=nginx-ingress

destroy:
	kubectl delete ns nginx-ingress 