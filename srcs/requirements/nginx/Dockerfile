# Use existing Alpine Linux Image as the base image

FROM alpine:3.14

# Package Installation 
RUN     apk update && \
        apk add nginx openssl && \
        wget -O /usr/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 && \
        chmod +x /usr/bin/dumb-init && \
        mkdir -p /run/nginx /var/www/wordpress /etc/nginx/tls && \
        openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
            -out /etc/nginx/tls/hbanthiy.42.fr.crt \
            -keyout /etc/nginx/tls/hbanthiy.42.fr.key \
            -subj "/C=CA/L=Quebec/O=42/OU=42Quebec/CN=hbanthiy.42.fr"

# Copy Files 
COPY    conf/nginx.conf /etc/nginx/http.d/default.conf

# Symbolic Links to STDOUT and STDERR to log files 
RUN     ln -sf /dev/stdout /var/log/nginx/access.log && \
        ln -sf /dev/strerr /var/log/nginx/error.log

# Handle Every Signal Correctly by Dumb Init to PID 1 
ENTRYPOINT [ "/usr/bin/dumb-init", "--" ]

# Define the command to run when the container starts 
CMD ["nginx", "-g", "daemon off;"]
