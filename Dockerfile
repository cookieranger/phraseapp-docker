FROM alpine:3.3

ENV VERSION 1.2.0

RUN set -ex \
        && apk add --no-cache --virtual .phraseapp-build \
                ca-certificates \
                curl \
        && curl -fSL -o /usr/local/bin/phraseapp "https://github.com/phrase/phraseapp-client/releases/download/${VERSION}/phraseapp_linux_amd64" \
        && chmod +x /usr/local/bin/phraseapp \
        && mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2 \
	&& apk del .phraseapp-build

ENTRYPOINT [ "/usr/local/bin/phraseapp" ]
