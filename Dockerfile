FROM centos
RUN yum -y update
RUN yum -y install httpd
RUN echo "Welcome to dellatech global spring 2020 class" > /var/www/html/index.html
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
