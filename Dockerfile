FROM centos:latest

RUN yum install -y postgresql wget bind-utils iputils nc nmap net-tools iproute tcpdump openssh && yum clean all
RUN adduser centos
USER centos
