FROM alpine:latest
COPY . /src
WORKDIR /src

ADD https://github.com/gohugoio/hugo/releases/download/v0.69.2/hugo_0.69.2_Linux-ARM.tar.gz /tmp
RUN tar -xf /tmp/hugo_0.69.2_Linux-ARM.tar.gz -C /tmp \
    && mkdir -p /usr/local/sbin \
    && mv /tmp/hugo /usr/local/sbin/hugo \
    && rm -rf /tmp/hugo_0.69.2_Linux-ARM \
    && rm -rf /tmp/hugo_0.69.2_Linux-ARM.tar.gz \
    && rm -rf /tmp/LICENSE.md \
    && rm -rf /tmp/README.md

RUN apk add --update git asciidoctor libc6-compat libstdc++ \
    && apk upgrade \
    && apk add --no-cache ca-certificates

CMD ["hugo", "serve", "-D","--bind=0.0.0.0"]
EXPOSE 1313
