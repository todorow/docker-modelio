FROM centos:7
MAINTAINER Ian Gillingham - Diamond Light Source
COPY ./modelio4.rpm / 
RUN yum install -y modelio4.rpm
RUN rm *.rpm
RUN mkdir -p /home/developer
CMD modelio-open-source4.1 --workspace /home/develop
