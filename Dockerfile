FROM centos:latest

RUN yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN dnf -qy module disable postgresql && dnf -y install postgresql12 postgresql12-server
RUN yum install -y wget bind-utils iputils nc nmap net-tools iproute tcpdump openssh openssh-clients which pg_top12 unzip man \
    && yum clean all
RUN adduser centos
USER centos
WORKDIR /home/centos
CMD ["tail",  "-f", "/dev/null"]
