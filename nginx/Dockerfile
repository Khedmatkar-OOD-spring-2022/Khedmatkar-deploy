FROM nginx
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./html/ .
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
ENTRYPOINT ["nginx", "-g", "daemon off;"]