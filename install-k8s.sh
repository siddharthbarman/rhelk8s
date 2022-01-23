printf "[kubernetes]\n" > /etc/yum.repos.d/kubernetes.repo
printf "name=Kubernetes\n" >> /etc/yum.repos.d/kubernetes.repo
printf "baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64\n" >> /etc/yum.repos.d/kubernetes.repo
printf "enabled=1\n" >> /etc/yum.repos.d/kubernetes.repo
printf "gpgcheck=1\n" >> /etc/yum.repos.d/kubernetes.repo
printf "repo_gpgcheck=1\n" >> /etc/yum.repos.d/kubernetes.repo
printf "gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg\n" >> /etc/yum.repos.d/kubernetes.repo
yum update -y
dnf install kubeadm --allowerasing
systemctl start kubelet.service
systemctl enable kubelet.service # You can disable it later but it must be enabled for configurng control plane