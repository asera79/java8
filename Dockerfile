FROM centos:7

MAINTAINER asera79@gmail.com

ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle

RUN yum update -y && yum install -y wget tar && \
    cd /tmp && wget --header "Cookie: oraclelicense=accept-securebackup-cookie;" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz && \
    tar -xzvf jdk-8u131-linux-x64.tar.gz && \
    mkdir -p /usr/lib/jvm && mv /tmp/jdk1.8.0_131 /usr/lib/jvm/java-8-oracle && \
    update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-8-oracle/bin/java 1 && \
    update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-8-oracle/bin/javac 1 && \
    rm -rf /tmp/*
