vagrant-plugin-install:
	vagrant plugin install vagrant-vbguest

vagrant-up:
	vagrant up

vagrant-tssh:
	vagrant ssh -c "sudo su -c 'cd /vagrant && tmux a -t basevm || tmux new -s basevm'"

vagrant-down:
	vagrant destroy

vagrant-halt:
	vagrant halt

vagrant-restart:
	vagrant halt
	vagrant up

vagrant-package-and-push:
	rm -f package.box
	vagrant package
	curl --upload-file package.box https://transfer.sh/algogrit-helm.box >> project-resources/link.txt

vagrant-box-refresh:
	vagrant box remove algogrit-helm.box
	vagrant box add --name algogrit-helm.box package.box

k8s-kind-create:
	kind create cluster --config devops/config/kind/multi-node.yaml
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

k8s-kind-delete:
	# kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
	kind delete cluster --name kind

k8s-helm-workaround:
	mkdir -p ~/.kube-helm-workaround
	kubectl config view --raw > ~/.kube-helm-workaround/kube.yaml
	echo 'export KUBECONFIG="$HOME/.kube-helm-workaround/kube.yaml"' >> .bash_profile
	echo 'export KUBECONFIG="$HOME/.kube-helm-workaround/kube.yaml"' >> .bashrc
