FROM nginx:alpine
EXPOSE 8080
STOPSIGNAL SIGQUIT
COPY nginx.conf /etc/nginx/
CMD nginx -g 'daemon off;'