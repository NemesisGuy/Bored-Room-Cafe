# Use the official Nginx image
FROM nginx:alpine

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy our landing page into Nginx's public folder
COPY index.html /usr/share/nginx/html/

COPY assets/ /usr/share/nginx/html/assets/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
