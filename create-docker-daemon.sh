printf '{\n' > /etc/docker/daemon.json
printf '  "exec-opts": ["native.cgroupdriver=systemd"],\n' >> /etc/docker/daemon.json
printf '  "log-driver": "json-file",\n' >> /etc/docker/daemon.json
printf '  "log-opts": {\n' >> /etc/docker/daemon.json
printf '    "max-size": "100m"\n' >> /etc/docker/daemon.json
printf '  },\n' >> /etc/docker/daemon.json
printf '  "storage-driver": "overlay2",\n' >> /etc/docker/daemon.json
printf '  "storage-opts": [\n' >> /etc/docker/daemon.json
printf '    "overlay2.override_kernel_check=true"\n' >> /etc/docker/daemon.json
printf '  ]\n' >> /etc/docker/daemon.json
printf '}\n' >> /etc/docker/daemon.json

systemctl restart docker