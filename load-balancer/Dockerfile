FROM ubuntu:18.04

WORKDIR /root/

#preparing ubuntu for building
RUN apt update -y \
    && apt install wget build-essential libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev -y

#bulding nginx from sources
RUN wget https://nginx.org/download/nginx-1.18.0.tar.gz \
    && tar -zxvf nginx-1.18.0.tar.gz \
    && cd nginx-1.18.0 \
    && ./configure --sbin-path=/usr/bin/nginx --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log  --http-log-path=/var/log/nginx/access.log --with-pcre --pid-path=/var/run/nginx.pid \
    && make \
    && make install
   
#copy configuration files
COPY nginx.conf /etc/nginx

#create a symlink to standart outputs
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

#restart on reboot
#RUN systemctl enable nginx

CMD [ "nginx", "-g", "daemon off;" ]

EXPOSE 80
EXPOSE 443