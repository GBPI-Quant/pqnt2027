FROM nginx:latest

USER root



COPY nginx.conf /etc/nginx/nginx.conf

COPY pq26/ /usr/share/nginx/html/pq26/

EXPOSE 22

CMD ["/bin/sh", "-c" && exec nginx -g 'daemon off;'"]
