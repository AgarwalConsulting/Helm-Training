vagrant-plugin-install:
	vagrant plugin install vagrant-vbguest

vagrant-up:
	vagrant up

vagrant-tssh:
	vagrant ssh -c "cd /vagrant && tmux a -t basevm || tmux new -s basevm"

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
