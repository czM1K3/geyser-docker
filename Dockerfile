FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
	openjdk-18-jre && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

VOLUME /data

ENTRYPOINT /entrypoint.sh
