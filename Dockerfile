FROM rust:1.41.1-alpine3.10 as builder

ENV TARGET rust-hello-world

WORKDIR /usr/src/${TARGET}
COPY . .
RUN cargo install --path .

FROM alpine:3.10
COPY --from=builder /usr/local/cargo/bin/${TARGET} /usr/local/bin/${TARGET}

ENTRYPOINT "rust-hello-world"
