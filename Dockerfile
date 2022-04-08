FROM golang:1.18 AS builder

WORKDIR /usr/go/src

COPY . /usr/go/src/

RUN go build -o /hellogolang

FROM scratch
COPY --from=builder /hellogolang /hellogolang

CMD [ "/hellogolang" ]