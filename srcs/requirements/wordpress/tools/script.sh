# Copy into the Config Directory 
cp /wp-config.php /var/www/wordpress/wp-config.php

# Wordpress Core Download
wp core download --allow-root --path=/var/www/wordpress

# Wordpress Core Installation with Configuration Value
wp core install --allow-root --path=/var/www/wordpress --url="$WP_URL" --title="$WP_TITLE" --admin_user="$WP_ADMIN_USER" --admin_password="$WP_ADMIN_PWD" --admin_email="$WP_ADMIN_EMAIL" --skip-admin_email

# User Creation for Wordpress Author
wp user create --allow-root --path=/var/www/wordpress $WP_USER $WP_USER_EMAIL --role=author --user-pass=$WP_USER_PWD

# Delete Script 
rm /wp-config.php

# Run Daemon (Running Daemon should be okay here becuase of the usage of Dumb Init)
php-fpm7 -F 