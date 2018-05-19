FROM alpine:latest

ENV LANG='en_US.UTF-8'
ENV LANGUAGE='en_US:en'
ENV LC_ALL='en_US.UTF-8'

LABEL tags="latest 1.0.2" \
      build_ver="19-06-2018"

# clone the repo before building the image:
# git clone -b mob git+ssh://mob@repo.or.cz/srv/git/centerim5.git

ADD centerim5 /usr/src/centerim5
WORKDIR /usr/src/centerim5

RUN apk -U upgrade && apk add -U --no-cache \
    git libtool gettext-libs gettext-dev pidgin-dev libsigc++ libsigc++-dev \
    python3 autoconf g++ ncurses-dev gettext automake make libpurple \
    libpurple-oscar libpurple-xmpp libpurple-bonjour ncurses \
    && rm -rf /var/cache/apk/*

RUN ./bootstrap && ./configure && make && make install

# ENTRYPOINT ["/usr/local/bin/centerim5"]
CMD ["/usr/local/bin/centerim5"]