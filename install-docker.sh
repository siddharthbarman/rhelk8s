dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo 
dnf update
dnf install https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.6-3.3.el7.x86_64.rpm -y
dnf install docker-ce -y

systemctl start docker.service
systemctl enable docker.service
