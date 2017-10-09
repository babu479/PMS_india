#pull basic image
FROM ubuntu:16.04
#Maintainer 
MAINTAINER vinodkumar
#install nginx
RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf \
    && systemctl start nginx

#Define working directory
WORKDIR /etc/nginx
#define default command
CMD ["nginx"]
#Expose ports
EXPOSE 80

