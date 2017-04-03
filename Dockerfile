FROM        mailtop/passenger-ruby24:2.4.1
MAINTAINER  Rodrigo de Avila <rodrigo.avila@mailtop.com.br>

RUN apt-get -qq update && apt-get -qq install zip awscli && \
    curl https://github.com/spf13/hugo/releases/download/v0.19/hugo_0.19_Linux-64bit.tar.gz && \
    tar xf hugo_0.19_Linux-64bit.tar.gz && \
    mv hugo_0.19_linux_amd64/hugo_0.19_linux_amd64 /usr/local/bin/hugo && \
    rm -rf hugo_0.19_Linux-64bit.tar.gz hugo_0.19_linux_amd64 && \
    apt-get -qq clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
