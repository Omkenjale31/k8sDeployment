FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove the default NGINX files
RUN rm -rf ./*

# Copy your custom website files from the local "html" folder into the container
COPY index.html ./

# Expose port 80 for web traffic
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]