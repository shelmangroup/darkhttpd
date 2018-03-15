FROM alpine AS build
ADD . /src
WORKDIR /src
RUN apk add -U build-base
RUN gcc -static -s -o darkhttpd darkhttpd.c

FROM scratch
COPY --from=build /src/darkhttpd /darkhttpd
ENTRYPOINT ["/darkhttpd]
