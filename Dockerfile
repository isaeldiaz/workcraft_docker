FROM openjdk:latest

ARG WORKCRAFT_VERSION=v3.3.9
ARG user=docker_user
ARG uid=1000

# Installing Workcraft
ADD workcraft-$WORKCRAFT_VERSION-linux.tar.gz /opt
ENV WORKCRAFT_HOME /opt/workcraft

# Adding user
RUN adduser --disabled-password --no-create-home --uid $uid $user && addgroup $user $user
USER $user

