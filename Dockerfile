FROM phusion/passenger-ruby23

MAINTAINER Rodrigo de Avila <rodrigo.avila@mailtop.com.br>

RUN apt-get -qq update && apt-get -qq install zip awscli && \
    curl -o pandoc.deb -fsSL https://github.com/jgm/pandoc/releases/download/1.17.2/pandoc-1.17.2-1-amd64.deb && \
    dpkg -i pandoc.deb && \
    rm -f pandoc.deb && \
    apt-get -qq clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
