#!/bin/bash
yum install epel-release -y
yum install python-pip -y
pip install boto -y
yum install httpd -y
systemctl start httpd -y
systemctl enable httpd -y
yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
yum-config-manager --enable remi-php74
yum install php -y
systemctl restart httpd
systemctl enable httpd
yum install wget -y
wget https://wordpress.org/latest.tar.gz
tar -xf latest.tar.gz -C /var/www/html/
mv /var/www/html/wordpress/* /var/www/html/ 
chown -R apache:apache /var/www/html/
yum install php-mysql -y 
systemctl restart httpd
systemctl enable httpd