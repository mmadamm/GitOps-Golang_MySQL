FROM golang:1.20-alpine3.18 as builder

WORKDIR /app
COPY . .

RUN go mod download
RUN go build -o app .

FROM alpine:3.18

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

WORKDIR /app
COPY --from=builder /app/app ./
EXPOSE 9090
CMD ./app

