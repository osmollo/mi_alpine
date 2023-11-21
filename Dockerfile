FROM alpine:3.18.4

LABEL maintainer="osmollo@proton.me"

RUN apk add --no-cache --virtual build-deps tzdata && \
    apk add --no-cachea --update bash zsh git ansible neovim starship jq less curl wget py3-pip py3-virtualenv ipython && \
    cp /usr/share/zoneinfo/Europe/Madrid /etc/localtime && \
    apk del build-deps

#COPY install.sh /tmp

#RUN chmod +x /tmp/install.sh && \
#    /tmp/install.sh && \
#    rm -f /tmp/install.sh

ENTRYPOINT [ "/bin/zsh" ]
