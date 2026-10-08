FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

#RUN apt - get update
#RUN apt - get install -y python3
#RUN apt - get install -y python3-pip
#RUN apt - get install -y git
#RUN apt - get install -y curl

RUN apt - get update && \
    apt - get install -y \
    python3 python3-pip \
    git curl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /shiro_DOCK

RUN git clone shiro_git

CMD ["sleep", "infinity"]

