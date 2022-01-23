yum update -y
setenforce 0
sed -i --follow-symlinks      's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
firewall-cmd --zone=public --permanent --add-port={2379,2380,6443,10250,1021,10252,10255}/tcp 
firewall-cmd --reload
swapoff -a
modprobe br_netfilter
echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
vi /etc/fstab

