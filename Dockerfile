FROM golang:1.13-alpine3.10 as build
RUN apk --no-cache add git
RUN go get github.com/hakluke/hakrawler; exit 0
ENV GO111MODULE on
ENTRYPOINT ["hakrawler"]
