# Utiliser l'image Ubuntu de notre dépot comme base
FROM cisspbootcamp/ubuntu:latest

# Mettre à jour les paquets disponibles
RUN apt-get update

# Demarrer Apache2
RUN update-rc.d apache2 defaults

# Demarrer MySQL
RUN service mysql start 

# Exposer les ports nécessaires (80 pour Apache, 3306 pour MySQL)
EXPOSE 80
EXPOSE 3306

# Copiez le site web dans le répertoire Apache2
COPY website /var/www/html

# Démarrer Apache2 en arrière-plan
CMD ["apachectl", "-D", "FOREGROUND"]

