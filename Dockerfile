FROM alpine:edge
RUN apk add --no-cache python3 python3-dev gcc git musl-dev libffi-dev openssl-dev \
        && pip3 install -U git+git://github.com/Netherdrake/steem-python \
        && pip3 install -U git+https://github.com/Netherdrake/conductor
CMD conductor        
