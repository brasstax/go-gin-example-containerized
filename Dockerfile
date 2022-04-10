FROM golang:1.18-alpine

WORKDIR /usr/src/app

COPY web-service/go.mod ./
RUN go mod download && go mod verify

COPY web-service/ .
RUN go build -v -o /usr/local/bin/app ./...

CMD ["app"]