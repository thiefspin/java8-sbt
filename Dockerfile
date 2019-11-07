# Docker image for java 8 and sbt latest at the time of building

FROM openjdk:8
MAINTAINER Michael Howard <michael.howard.h@gmail.com>

RUN apt-get -qqy update

# Install
RUN echo "deb http://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt-get update -y
RUN apt-get install -y apt-transport-https sbt
RUN sbt sbtVersion
