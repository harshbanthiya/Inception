# Use an Alpine Linux image as the base image
FROM alpine:3.12

# Install MariaDB
RUN apk add --update mariadb mariadb-client

# Copy the MariaDB configuration file to the image
COPY ./conf/my.cnf /etc/my.cnf

# Set up the MariaDB data directory and initialize the database
RUN mkdir /var/lib/mysql \
    && chown mysql:mysql /var/lib/mysql \
    && mysqld --initialize-insecure \
        --datadir=/var/lib/mysql

# Define the command to run when the container starts
CMD ["mysqld", "--user=mysql", "--datadir=/var/lib/mysql"]
