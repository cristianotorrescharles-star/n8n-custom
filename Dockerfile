FROM n8nio/n8n:latest

USER root
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install playwright
RUN playwright install --with-deps

USER node
