#!/bin/bash

echo "ClientAliveInterval 60" >> /etc/ssh/sshd_config
echo "LANG=en_US.utf-8" >> /etc/environment
echo "LC_ALL=en_US.utf-8" >> /etc/environment

yum install httpd php git -y
git clone https://github.com/devasivaram/aws-elb-site.git /var/website/
cp -r /var/website/* /var/www/html/
chown -R apache:apache /var/www/html/*
systemctl restart httpd.service
systemctl enable httpd.service