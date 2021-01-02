FROM nginx:latest
LABEL maintainer="NGINX Mp4 Docker Maintainers <william.ren@live.cn>"
RUN mkdir -p /usr/share/nginx/mp4/
COPY nginx.conf /etc/nginx/nginx.conf
COPY mp4.conf /etc/nginx/conf.d/default.conf
VOLUME /usr/share/nginx/mp4
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
