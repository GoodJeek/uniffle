# this docker file serves the rss server base image for Debian/Ubuntu releated distributions
ARG BASE_IMAGE=eclipse-temurin:11-jdk
FROM ${BASE_IMAGE}

RUN apt-get update && \
    apt-get install -y zlib1g zlib1g-dev lzop lsof netcat dnsutils less procps iputils-ping && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
