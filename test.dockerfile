FROM golang:1.16-alpine as tester

WORKDIR ./app

COPY ./app .
COPY go.mod .
COPY go.sum .
COPY .golangci.yml .

ENV CGO_ENABLED=0

RUN go get github.com/golangci/golangci-lint/cmd/golangci-lint && \
    go mod download -x && \
    go mod vendor

CMD golangci-lint run -c .golangci.yml && go test ./...