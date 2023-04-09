FROM golang:1.20.3-alpine3.17

WORKDIR /go/src/try-gomock
COPY . /go/src/try-gomock/

RUN apk update && \
    apk add --no-cache git gcc musl-dev make tzdata

RUN go install github.com/golang/mock/mockgen@v1.6.0

EXPOSE 8080
