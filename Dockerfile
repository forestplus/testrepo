FROM centos:8
#ADD nginx.repo/ /etc/yum.repos.d/
RUN yum update -y && yum install nginx mc php-fpm -y && yum clean all && systemctl enable nginx.service && systemctl enable php-fpm
#RUN rm -rf /usr/share/nginx/html/*
#ADD index.php/ /usr/share/nginx/html/
#ADD default.conf/ /etc/nginx/conf.d/
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
