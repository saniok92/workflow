FROM nginx:1.21.1-alpine

WORKDIR /app

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /var/www/index.html

COPY style.css /var/www/style.css

COPY images /var/www/images

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
