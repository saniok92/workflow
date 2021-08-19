FROM nginx:1.19.8-alpine

WORKDIR /app

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /var/www/index.html

COPY style.css /var/www/style.css

COPY do.png /var/www/do.png

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
