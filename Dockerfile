FROM ubuntu:jammy
WORKDIR /test
COPY master.sh .
COPY worker.sh .
COPY entry.sh .
