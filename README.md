                          How to deploy multinode Kubernetes cluster on centos using kubeadmin
1) Pre-Requisites

    ===> A Linux management node is needed to operate on. It can be ubuntu, centos7 or rhel7 
    ===> Management node should have kvm virtualization enabled and properly configured.

2) Software requirements

    ===> Ansible and python3 should be instaled on management node
    ===> Download minimal centos 7.x and rename it to centos.iso.Place centos.iso in /var/lib/libvirt/images/ directory on
         management node. Optionally, below command can be used: 
    
         wget -O /var/lib/libvirt/images/centos.iso --continue http://mirror.vanehost.com/centos/7.7.1908/isos/x86_64/CentOS-7-x86_64-Minimal-1908.iso


3) Cluster node sizing:
    
    ===> Master node:
    
              ===> RAM : 2GB
              ===> vCPU: 2
              ===> DISK: 30GB
              
    ===> Two Worker nodes:
    
              ===> RAM : 1GB
              ===> vCPU: 1
              ===> DISK: 10GB
    

4) Procedure:
    
   ===> Clone this code on management node:
   
        git clone git@github.com:udautkarsh/automation.git

   ===> Navigate to directory "automation/kubernetes/centos" and trigger playbook
        
        cd automation/kubernetes/centos
        ansible-playbook -i hosts create.yaml

   
      
