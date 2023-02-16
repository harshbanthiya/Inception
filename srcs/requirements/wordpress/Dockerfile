# Using Alpine 3.14
FROM alpine:3.14

# # Install PHP and PHP-FPM
# RUN apk add --update php7 php7-FPM

# # Install necessary PHP extensions for Wordpress
# RUN apk add --update php7-mysqli php7-gd php7-opcache php7-curl

# # Download and extract the latest version of Wordpress
# RUN apk add --update wget && \
#     wget https://wordpress.org/latest.tar.gz && \
#     tar xvf latest.tar.gz && \
#     rm latest.tar.gz && \
#     mv wordpress /var/www/html/

# # Configure PHP-FPM
# COPY ./conf/php-fpm.conf /etc/php7/php-fpm.d/www.conf 

# # Define the command to run when the container starts 
# CMD ["php-fpm7", "-F"]