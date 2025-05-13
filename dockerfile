FROM nginx:alpine

# Copy the static content to nginx's default serving directory
COPY index.html /usr/share/nginx/html/
COPY js/ /usr/share/nginx/html/js/
COPY css/ /usr/share/nginx/html/css/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]