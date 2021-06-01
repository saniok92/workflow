FROM nginx:1.21.0-alpine

WORKDIR /app

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /var/www/index.html

COPY style.css /var/www/style.css

RUN apk add nano

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
