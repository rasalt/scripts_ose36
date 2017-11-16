#For master, infra,app nodes

sudo su
subscription-manager register --username=<your username here> --password=<passwo
rd>
subscription-manager attach --pool=<pool with openshift subs>

subscription-manager repos --disable="*"
subscription-manager repos \
    --enable="rhel-7-server-rpms" \
    --enable="rhel-7-server-extras-rpms" \
    --enable="rhel-7-server-ose-3.6-rpms" \
    --enable="rhel-7-fast-datapath-rpms"

yum install wget git net-tools bind-utils iptables-services bridge-utils bash-completion kexec-tools sos psacct -y 
yum update -y

yum install atomic-openshift-utils -y

systemctl reboot
