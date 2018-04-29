FROM    alpine

MAINTAINER BELARBI SAMY < https://github.com/0x539-Samy >

RUN     apk add --update  bash curl ca-certificates openssh-client git ncurses-libs && \
        rm -Rf /var/cache/apk/*
WORKDIR /app
RUN     git clone https://github.com/offensive-security/exploit-database.git
RUN ln -s /app/exploit-database/searchsploit /usr/bin



ENV HOME /app/exploit-database
WORKDIR /app/exploit-database
ENTRYPOINT ["/usr/bin/searchsploit"]
