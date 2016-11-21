FROM centos:6

RUN yum install -y \
	nc \
	php-cli \
	php-gd \
	php-mysql \
	php-pdo \
	php-mbstring \
	php-intl \
	php-xml \
	php-ldap

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
 && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
 && php -r "unlink('composer-setup.php');" \
 && php -m
