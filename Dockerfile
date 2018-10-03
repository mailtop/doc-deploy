FROM        mailtop/passenger:2.5.1
MAINTAINER  Rodrigo de Avila <rodrigo.avila@mailtop.com.br>

RUN apt-get -qq update && \
    apt-get -qq install zip awscli && \
    curl -fsSL -o hugo.tar.gz https://github.com/spf13/hugo/releases/download/v0.48/hugo_0.48_Linux-64bit.tar.gz && \
    tar xf hugo.tar.gz && \
    mv hugo /usr/local/bin/hugo && \
    rm -rf hugo.tar.gz && \
    apt-get -qq clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
