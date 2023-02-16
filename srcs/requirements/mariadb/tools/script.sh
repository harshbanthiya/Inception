#!/bin/sh

# Check installation 
if [$INSTALL -eq 1]
then 
    # Install System Things by Bootstrap Mode
    /usr/bin/mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
    # Run Daemon by background
    /usr/bin/mysqld --user=root &
    # Force Delay to Daemon Get Ready
    sleep 2
    # Run query SQL Script
    mysql < /query.sql 
    # Kill Daemon when ready 
    pkill mysqld
fi

# Delete Query SQL Script 
rm /query.sql 

# Run Daemon with Created User (It is OK to run Daemon because of Dumb Init)
/usr/bin/mysqld --user=$MARIADB_USER

