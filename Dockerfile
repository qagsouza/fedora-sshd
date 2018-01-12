FROM quin/fedora-systemd:latest

ENV SSHUSER fedora
ENV SSHAUTHORIZEDKEY ""

COPY sshuser_setup /bin
COPY sshuser_setup.service /etc/systemd/system

RUN dnf -y install openssh-server; dnf clean all; systemctl enable sshd; systemctl enable sshuser_setup

RUN sed -i "s/PasswordAuthentication yes/PasswordAuthentication no/" -i "s/PermitRootLogin yes/PermitRootLogin no/" /etc/ssh/sshd_config

EXPOSE 22
