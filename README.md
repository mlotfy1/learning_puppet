# learning_puppet

## Install puppet
- Install the puppet package:
```
rpm -Uvh https://yum.puppet.com/puppet6-release-el-7.noarch.rpm
yum install -y puppetserver git vim
```
- Configure JVM memory by editing the JAVA_ARGS `JAVA_ARGS="-Xms200m -Xmx300m"`
```
vi /etc/sysconfig/puppetserver 
systemctl start puppetserver
systemctl enable puppetserver
```
- Set the agent information in `systemctl enable puppetserver`
```
[agent]
server = master.puppet.vm
```
- to use the gem command to install r10k package then we run the agent process
```
vi .bash_profile 
```
modify the path varialbe `PATH=$PATH:/opt/puppetlabs/puppet/bin:$HOME/bin`
```
source .bash_profile 
gem install r10k
puppet agent -t
```

## Configure r10k to setup a control repo
- Create yaml file to configure the repo environments
```
mkdir /etc/puppetlabs/r10k
vim /etc/puppetlabs/r10k/r10k.yaml
```
and insert the below:
```
---
:cachedir: '/var/cache/r10k'


:sources:
        :my-org:
                remote: 'https://github.com/mlotfy1/learning_puppet.git'
                basedir: '/etc/puppetlabs/code/environments'
```
- Deploy the configurations
```
r10k deploy environment -p
```
check the directory `/etc/puppetlabs/code/environments/`
