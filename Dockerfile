FROM centos:latest

RUN yum install -y postgresql wget bind-utils iputils nc nmap net-tools iproute tcpdump openssh pg-top \
    && yum clean all
RUN adduser centos
USER centos
