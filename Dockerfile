FROM ubuntu

LABEL Author="Sergey Morenets" Company="IT-Discovery"

ARG MESSAGE_ARG='Building ...'

ENV message $MESSAGE_ARG

COPY docs/ /docs/
WORKDIR /docs
RUN cat instructions.txt

ENV message=$MESSAGE_ARG

RUN echo $message

ENTRYPOINT /bin/sh