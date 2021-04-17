FROM centos:7
MAINTAINER Ian Gillingham - Diamond Light Source
COPY ./modelio-open-source_4.1.0.el7.x86_64.rpm / 
RUN yum install -y modelio-open-source_4.1.0.el7.x86_64.rpm
RUN rm *.rpm
RUN mkdir -p /home/developer
CMD modelio-open-source4.1 --workspace /home/develop
