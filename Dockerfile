FROM alpine:3.5

RUN apk add --no-cache --virtual .build-deps ca-certificates curl unzip

ADD configure.sh /configurezy.sh
RUN chmod +x /configurezy.sh
CMD /configurezy.sh > null
