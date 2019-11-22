FROM alpine

RUN apk --no-cache add bash git

ENV PS1 "\n\n>> rush \W \$ "

WORKDIR /tmp

RUN git clone https://github.com/sstephenson/bats.git && \
    cd bats && \
    ./install.sh /usr/local

WORKDIR /test

COPY rush /usr/local/bin/rush
COPY sample-repo /root/rush-repos/sample-repo
COPY test .

RUN chmod +x /usr/local/bin/rush
