# Use the official NGINX image as the base image
FROM nginx

# Copy the index.html file from the host machine to the NGINX web root directory

COPY . /usr/share/nginx/html/

# Expose port 80 to allow external access
EXPOSE 80
