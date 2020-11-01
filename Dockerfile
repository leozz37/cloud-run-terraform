FROM golang:alpine

WORKDIR /app
COPY server.go .

RUN go mod download
RUN go build -o main .

EXPOSE $PORT

CMD [ "./main" ]