FROM mailtop/passenger:2.6.3.1
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
    apt-get -qq update && \
    apt-get -qq install google-cloud-sdk zip && \
    curl -fsSL -o hugo.tar.gz https://github.com/spf13/hugo/releases/download/v0.48/hugo_0.48_Linux-64bit.tar.gz && \
    tar xf hugo.tar.gz && \
    mv hugo /usr/local/bin/hugo && \
    rm -rf hugo.tar.gz && \
    apt-get -qq clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
