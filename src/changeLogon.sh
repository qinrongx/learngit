#!/bin/bash
echo -e "uteadmin\nuteadmin\n" | passwd root
sed -i 's/^PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/^#PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config

sed -i 's/#UseDNS yes/UseDNS no/g'  /etc/ssh/sshd_config 
sed -i 's/GSSAPIAuthentication yes/GSSAPIAuthentication no/g' /etc/ssh/sshd_config
systemctl restart sshd.service
exit
