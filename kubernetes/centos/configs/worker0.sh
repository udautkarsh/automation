virt-install --name kube-worker0 --memory=1024 --vcpus=1 --location /var/lib/libvirt/images/centos.iso --disk size=10 --noautoconsole --network bridge=virbr0 --graphics=vnc --hvm --os-variant=rhel7.0 --initrd-inject=./configs/worker0-ks.cfg --extra-args "ks=file:/worker0-ks.cfg"

