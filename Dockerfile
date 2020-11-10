FROM ubuntu:20.04

RUN apt update \
&& apt install -y wget unzip sudo dialog ant sshpass maven curl \
&& mkdir /opt/sdk \
&& cd /opt/sdk \
&& wget -O sdk.zip https://urplus-developer-site.s3-eu-west-1.amazonaws.com/sdk/sdk-1.11.0.zip \
&& unzip sdk.zip \
&& rm sdk.zip \
&& sed -i '/read -p/d' ./install.sh \
&& ./install.sh
