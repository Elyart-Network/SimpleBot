FROM golang:1.20 AS builder
WORKDIR /app
RUN git clone https://github.com/Elyart-Network/NyaBot.git .
ADD app.go /app/app.go
ADD ./plugin /app/plugin
RUN go mod download
RUN go build -o NyaBot .

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/NyaBot .
ADD config.yaml /app/config.yaml
ENV RUN_IN_DOCKER=1
EXPOSE 3000
CMD ["./NyaBot"]