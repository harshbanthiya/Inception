# Use an Alpine Linux image as the base image
FROM alpine:3.14

# Package Installation 
# 1 - MariaDb package for db
# 2 - Dumb Init Package for Handling signal correctly on docker compose
# 3 - Permission Setting

RUN     apk update && \
        apk add mariadb mariadb-client && \
        wget -O /usr/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 && \
        chmod +x /usr/bin/dumb-init && \
        mkdir -p /run/mysqld /var/lib/mysql && \
        mariadb-install-db --datadir=/var/lib/mysql --auth-root-authentication-method=normal && \
        chown -R mysql:mysql /var/lib/mysql /run/mysqld

# Copy Files 
COPY    conf/query.sql /query.sql
COPY    tools/script.sh /script.sh

# Permission Control 
RUN     chmod +x /tmp/script.sh

# Handle Every Signal Correctly by Dumb Init to PID 1
ENTRYPOINT [ "/usr/bin/dumb-init", "--" ]

# Define the command to run when the container starts
CMD ["sh", "-c", "/script.sh"]
