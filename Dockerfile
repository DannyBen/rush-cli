FROM alpine

WORKDIR /app

ENV PS1 "\n\n>> rush \W \$ "

RUN apk --no-cache add bash git

COPY rush /usr/local/bin/rush
COPY sample-repo /rush-repos/

RUN chmod +x /usr/local/bin/rush
