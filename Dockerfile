FROM ubuntu:22.04
RUN apt-get update && apt-get install -y openssh-server python3 iputils-ping sudo
RUN useradd -ms /bin/bash ansible && echo 'ansible:ansible' | chpasswd && adduser ansible sudo
RUN mkdir /var/run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]