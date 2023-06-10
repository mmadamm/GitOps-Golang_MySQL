FROM golang:1.20-alpine3.18 as builder

WORKDIR /app
COPY . .

RUN go mod download \
&& go build -o app .

FROM alpine:3.18 as runner

RUN addgroup -S appgroup && adduser -S insta -G appgroup
USER insta

WORKDIR /app
COPY --from=builder /app/app ./
EXPOSE 9090
CMD [".\app"]

