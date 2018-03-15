# darkhttpd

[![CircleCI](https://circleci.com/gh/shelmangroup/darkhttpd.svg?style=svg)](https://circleci.com/gh/shelmangroup/darkhttpd)

Containerized and statically linked build of [darkhttpd](https://unix4lyfe.org/darkhttpd/) with zero dependencies.

Weighs in at just under 50kB.

## How to run

A minimal example to serve current working directory on port 8000:

```docker run -v $PWD:/www -p 8000:80 shelmangroup/darkhttpd```
