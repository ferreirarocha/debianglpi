	apt update ;
	apt install unzip curl snmp apache2 php libapache2-mod-php 
php-curl php-mbstring php-mysql php-xml php-bcmath -y ;
	apt install php-imap php-soap  php-cli php-common php-snmp 
php-xmlrpc php-gd php-ldap -y ;
	apt install libmariadbd18 libmariadbd-dev mariadb-server php-dev 
php-pear  -y ;
	echo "no" | sudo pecl install apcu_bc-beta  

	echo -e 
"[apcu]\nextension=apcu.so\nextension=apc.so\n\napc.enabled=1"  > 
/etc/php/*/apache2/php.ini


	chown www-data:www-data -R /var/www/html/glpi
	chmod 775 -R /var/www/html/glpi
	echo -e "<Directory \"/var/www/html/glpi\">\n\tAllowOverride 
All\n</Directory>" > /etc/apache2/conf-available/glpi.conf

	echo -e "<VirtualHost *:80>\t
	ServerAdmin admin@glpi\n\tServerName glpi\n\tServerAlias 
glpi\n\tDocumentRoot /var/www/html/glpi\n\tErrorLog 
${APACHE_LOG_DIR}/error.log\n\tCustomLog ${APACHE_LOG_DIR}/access.log 
combined\n\n</VirtualHost>" > /etc/apache2/sites-available/glpi.conf
	
	a2enconf glpi
	a2ensite glpi.conf
	systemctl  restart apache2
	
