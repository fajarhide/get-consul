FROM golang:latest

LABEL maintainer="Fajarhide <fajarhide@gmail.com>"

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o main .

CMD ["./main"]