FROM centos:7

RUN yum install -y nmap-ncat php-cli php-gd php-intl php-pdo php-mysqlnd php-xml php-mbstring

#RUN (echo "de_DE.UTF-8 UTF-8"; echo "fr_FR.UTF-8 UTF-8") >> /etc/locale.gen \
#  && DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
 && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
 && php -r "unlink('composer-setup.php');" \
 && php -m

RUN groupadd -g 1000 build \
 && useradd -c "Build user" -d /app -u 1000 -g 1000 build

USER build
WORKDIR /app
