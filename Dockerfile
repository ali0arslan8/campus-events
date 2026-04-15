# Serve the static files using Nginx
FROM nginx:alpine

# Copy the source files to the Nginx html folder
COPY src/ /usr/share/nginx/html/
COPY styles/ /usr/share/nginx/html/styles/

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]