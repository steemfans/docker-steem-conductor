FROM alpine:3.7
RUN apk add --no-cache python3 python3-dev gcc git musl-dev libffi-dev openssl-dev \
    && pip3 install steempy \
    && pip3 install conductor \
    && apk del git gcc musl-dev libffi-dev python3-dev
ENV UNLOCK=123456
CMD ["conductor"]
