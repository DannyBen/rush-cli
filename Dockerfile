FROM alpine

WORKDIR /test

ENV PS1 "\n\n>> rush \W \$ "

RUN apk --no-cache add bash git

COPY rush /usr/local/bin/rush
COPY sample-repo /root/rush-repos/sample-repo

RUN chmod +x /usr/local/bin/rush
