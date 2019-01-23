FROM coincan/coinos:3.8
MAINTAINER CoinCan <inputx@goodays.com>

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="Nginx on ARM platform" \
    org.label-schema.description="alpine3.8, nginx1.14.2-r0" \
    org.label-schema.url="https://github.com/coincan/nginx" \
    org.label-schema.vendor="CoinCan (inputx@goodays.com)" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20190124"

RUN apk add --update nginx && \
	rm -rf /var/cache/apk/*

EXPOSE 443 80 8080 8000

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]