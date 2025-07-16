# Use the official Nginx image as the base
FROM nginx:alpine

# Remove default nginx web content
RUN rm -rf /usr/share/nginx/html/*

# Copy our website files to the nginx html folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
