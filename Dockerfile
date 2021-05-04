FROM alpine

RUN apk --no-cache add bash git diffutils grep curl

ENV PS1 "\n\n>> rush \W \$ "

WORKDIR /tmp

WORKDIR /test

RUN git config --global pull.rebase false

COPY rush /usr/local/bin/rush
COPY sample-repo /root/rush-repos/sample-repo
COPY test .

RUN chmod +x /usr/local/bin/rush
