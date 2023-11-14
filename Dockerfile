# Utilisez une image de base Ubuntu
FROM ubuntu:20.04

# Mettez � jour le syst�me et installez les paquets n�cessaires
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apache2 \
    mysql-server \
    php libapache2-mod-php php-mysql

# Copiez le fichier SQL dans le conteneur
COPY bd.sql /docker-entrypoint-initdb.d/

# Configurez MySQL pour accepter les connexions distantes (� des fins de d�monstration uniquement)
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf

# Exposez les ports n�cessaires (80 pour Apache2, 3306 pour MySQL)
EXPOSE 80
EXPOSE 3306

# Copiez le site web dans le r�pertoire Apache2
COPY . /var/www/html

# D�marrez les services Apache2 et MySQL au d�marrage du conteneur
CMD service apache2 start && service mysql start && tail -f /dev/null     
