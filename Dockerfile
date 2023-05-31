FROM ruby:2.7.7-alpine3.16


# create a git app
RUN adduser -D -g 'app' app                                    \
    && echo 'app ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers   \
    && apk add --no-cache sudo git build-base tzdata nodejs

RUN ln -s /lib/libc.musl-$(uname -m).so.1 /lib/ld-linux-$(echo $(uname -m) | sed 's/_/-/g').so.1 \
    && ln -s /lib/libc.musl-$(uname -m).so.1 /lib/ld-linux-$(echo $(uname -m) | sed 's/_/-/g').so.2

USER app
WORKDIR app