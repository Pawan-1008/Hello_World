from docker.io/ubuntu
run apt-get update -y && \
    apt-get install apache2 -y
copy index1.html /var/www/html
copy wow.css /var/www/html
cmd ["apache2ctl","-D","FOREGROUND"]
expose 80
