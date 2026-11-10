FROM golang:1.27.0-alpine3.24

# UID 501 = premier utilisateur macOS, pour éviter les soucis de permissions sur le volume monté
RUN addgroup -g 501 go && adduser -h /home/go -G go -D -u 501 go

WORKDIR /home/go
