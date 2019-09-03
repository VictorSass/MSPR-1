### Récupération des sources
#yum install httpd
#yum install postfix
#yum install mariadb-server

### Démarrage des services
#systemctl start httpd.service
#systemctl enable httpd.service
#systemctl start postfix.service
#systemctl enable postfix.service
#systemctl start mariadb.service
#systemctl enable mariadb.service

### Vérification du statut des services
systemctl status httpd.service
systemctl status postfix.service
systemctl status mariadb.service

### Lancement du script de création de la base de donnée
sh CreationDB.sh
sh Clients_Rdm
sh Logiciels_Rdm
sh Licences_Rdm

### Changement de l'index pour Apache
mkdir /var/www/html/tptest.com/
cp index.html /var/www/html/tptest.com/
cp tptest.com.conf /etc/httpd/conf.d/tptest.com
