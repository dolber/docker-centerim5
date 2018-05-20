FROM ubuntu:latest

ENV LANG='en_US.UTF-8'
ENV LANGUAGE='en_US:en'
ENV LC_ALL='en_US.UTF-8'

LABEL tags="latest 1.0.2" \
      build_ver="19-06-2018"


RUN apt-get update && apt-get install -y \
    git build-essential libtool libpurple-dev libncursesw5-dev libglib2.0-dev libsigc++-2.0-dev \
    autoconf libgconf2-dev autopoint g++ ncurses-dev gettext automake make locales \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen


RUN cd /root && mkdir -p ~/.ssh && ssh-keyscan -H repo.or.cz >> ~/.ssh/known_hosts \
    && git clone -b mob git+ssh://mob@repo.or.cz/srv/git/centerim5.git && cd /root/centerim5 \
    && ./bootstrap && ./configure && make && make install && rm -rf /root/centerim5


CMD ["/usr/local/bin/centerim5"]
