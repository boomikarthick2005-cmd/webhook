# Use a lightweight web server for static content.
FROM nginx:alpine

WORKDIR /usr/share/nginx/html

# Remove default nginx static files.
RUN rm -rf ./*

# Copy application files.
COPY app/ .

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
