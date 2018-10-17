FROM alpine:edge
RUN apk --update upgrade && apk add nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY start-nginx /sbin/start-nginx

EXPOSE 80

ENTRYPOINT start-nginx
