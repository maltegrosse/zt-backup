FROM alpine:3.14.6
RUN apk update && apk add --no-cache --purge --clean-protected bash tar && rm -rf /var/cache/apk/*
RUN mkdir backup
RUN mkdir volume
COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
