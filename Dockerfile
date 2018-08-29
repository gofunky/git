ARG ALPINE
FROM alpine:${ALPINE}
MAINTAINER matfax <mat@fax.fyi>

ARG VERSION
ARG BUILD_DATE
ARG VCS_REF

RUN apk add --no-cache --upgrade git openssh ca-certificates

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/gofunky/git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"
