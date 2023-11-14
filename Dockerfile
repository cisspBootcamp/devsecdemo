# Utilisez une image de base Ubuntu
FROM ubuntu:20.04

# Mettez à jour le système et installez les paquets nécessaires
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apache2 \
    mysql-server \
    php libapache2-mod-php php-mysql

# Copiez le fichier SQL dans le conteneur
COPY bd.sql /docker-entrypoint-initdb.d/

# Configurez MySQL pour accepter les connexions distantes (à des fins de démonstration uniquement)
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf

# Exposez les ports nécessaires (80 pour Apache2, 3306 pour MySQL)
EXPOSE 80
EXPOSE 3306

# Copiez le site web dans le répertoire Apache2
COPY . /var/www/html

# Démarrez les services Apache2 et MySQL au démarrage du conteneur
CMD service apache2 start && service mysql start && tail -f /dev/null     
