# Utiliser l'image Ubuntu 20.04 comme base
FROM ubuntu:20.04

# Mettre à jour les paquets disponibles
RUN apt-get update

# Installer Apache2
RUN apt-get install -y apache2

# Installer PHP
RUN apt-get install -y php libapache2-mod-php php-mysql

# Installer MySQL
RUN apt-get install -y mysql-server

# Copiez le fichier SQL dans le conteneur
COPY bd.sql /var/www

# Configurer MySQL (note: ceci est très basique et non sécurisé, à des fins de démonstration uniquement)
RUN sed -i 's/bind-address.*/bind-address = 0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf && \
    service mysql start && \
    mysql -e "source /var/www/bd.sql;" && \
    mysql -e "CREATE USER 'demo'@'localhost' IDENTIFIED BY 'mypassword';" && \
    mysql -e "GRANT ALL PRIVILEGES ON demobd.* TO 'demo'@'localhost';" && \
    mysql -e "FLUSH PRIVILEGES;"

# Exposer les ports nécessaires (80 pour Apache, 3306 pour MySQL)
EXPOSE 80
EXPOSE 3306

# Copiez le site web dans le répertoire Apache2
COPY website /var/www/html

# Commande pour démarrer Apache2 en arrière-plan
CMD ["apachectl", "-D", "FOREGROUND"]

