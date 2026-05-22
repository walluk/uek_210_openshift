FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

RUN mkdir -p /tmp/nginx/client_temp

RUN chmod -R 777 /tmp/nginx
RUN chmod -R 777 /var/cache/nginx
RUN chmod -R 777 /var/run
RUN chmod -R 777 /etc/nginx

RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]