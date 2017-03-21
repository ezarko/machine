FROM golang:1.6.2

ENV HTTP_PROXY=http://www-proxy.us.oracle.com:80
ENV HTTPS_PROXY=http://www-proxy.us.oracle.com:80

RUN go get  github.com/golang/lint/golint \
            github.com/mattn/goveralls \
            golang.org/x/tools/cover

ENV USER root
WORKDIR /go/src/github.com/docker/machine

COPY . ./
RUN mkdir bin
