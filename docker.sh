# #!/bin/bash
# sudo yum install -y yum-utils
# sudo yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
# sudo y
# sudo y
# sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# sudo systemctl start docker
# sudo usermod -aG docker ec2-user
# exit

#!/bin/bash

#check whether root user or not (sudo su -)
R="\e[31m"
N="\e[0m"

yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user
echo -e "$R Logout and Login again $N"
exit