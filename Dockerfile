root@ubuntu:~# cat Dockerfile 
FROM centos:8
MAINTAINER 705jul
LABEL "purpose"="TEST"
#RUN apt-get update
#RUN apt install yum
RUN yum install httpd -y
#RUN apt-get install apache2 -y
ADD test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test2.html"] 
EXPOSE 80
CMD apachectl -DFOREGROUND
