sudo su 
yum install docker-1.12.6 -y

systemctl stop docker
sed -i '/OPTIONS=.*/c\OPTIONS="--selinux-enabled --insecure-registry 172.30.0.0/16"' \
/etc/sysconfig/docker

cat <<EOF > /etc/sysconfig/docker-storage-setup
DEVS=/dev/xvdb
VG=docker-vg
EOF

docker-storage-setup

cat /etc/sysconfig/docker-storage

lvs

systemctl is-active docker

systemctl enable docker

systemctl stop docker
rm -rf /var/lib/docker/*

systemctl restart docker
