# Build and release the app in first container
FROM elixir:1.6-alpine as builder

ENV MIX_ENV prod

# Install build dependencies
RUN mix local.hex --force
RUN mix local.rebar --force
RUN apk --update --no-cache add build-base

# Create working directory
ADD . /app
WORKDIR /app

RUN mix deps.get
RUN mix release --verbose --env prod
RUN mkdir -p /output && tar -C /output -xf $(find . -name "*.tar.gz")

# Just take what's needed in the second container
FROM alpine:latest

RUN apk --update --no-cache add bash openssl

# This needs to be set for Distillery to replace vars
ENV REPLACE_OS_VARS true

WORKDIR /app/

COPY --from=builder /output/ .

CMD ./bin/distillery_docker_demo foreground
