# Use existing Alpine Linux Image as the base image

FROM apline:3.14

# # Install NGINX and OpenSSL packages 
# RUN apk update && apk add nginx openssl 

# # Copy the Nginx configuration file to the image 
# COPY ./conf/nginx.conf /etc/nginx/nginx/conf

# # Generate a self-signed SSL certificate and key
# RUN openssl req -x509 -newkey rsa:2048 -keyout /etc/ssl/certs/nginx.key -out /etc/ssl/certs/nginx.crt \
#     -days 365 -nodes -subj "/CN=localhost"

# # Expose port 443 for ecrypted connections 
# EXPOSE 443

# # Define the command to run when the container starts 
# CMD ["nginx", "-g", "daemon off;"]
