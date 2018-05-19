FROM ubuntu:18.04

ENV LANG='en_US.UTF-8'
ENV LANGUAGE='en_US:en'
ENV LC_ALL='en_US.UTF-8'

LABEL tags="latest 1.0.2" \
      build_ver="19-06-2018"

# clone the repo before building the image:
# git clone -b mob git+ssh://mob@repo.or.cz/srv/git/centerim5.git

ADD centerim5 /usr/src/centerim5
WORKDIR /usr/src/centerim5

RUN apt-get update && apt-get -y dist-upgrade && apt-get install -y \
    git build-essential libtool libpurple-dev libncursesw5-dev libglib2.0-dev libsigc++-2.0-dev \
    autoconf libgconf2-dev autopoint g++ ncurses-dev gettext automake make locales

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen \
    && ./bootstrap && ./configure && make && make install

ENTRYPOINT ["/usr/local/bin/centerim5"]
