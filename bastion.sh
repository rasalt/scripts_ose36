sudo su 
subscription-manager register --username=<your username here> --password=<password>
subscription-manager attach --pool=<pool with openshift subs>
subscription-manager repos --enable rhel-7-server-extras-rpms
subscription-manager repos --enable rhel-7-server-ansible-2.4-rpms
sudo subscription-manager repos --enable rhel-7-server-extras-rpms
sudo subscription-manager repos --enable rhel-7-server-ansible-2.4-rpms

wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install ./epel-release-latest-7.noarch.rpm
yum update

sudo yum -y install ansible
ansible --version

