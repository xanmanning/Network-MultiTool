FROM alpine:3.16

ARG INSTALL_EXTRAS=false
ARG INSTALL_ADDITIONAL_SHELL="bash"

RUN apk update --no-cache && \
    # Base Utils
    apk add --no-cache \
        bind-tools \
        busybox-extras \
        curl \
        iproute2 \
        iputils \
        jq \
        mtr \
        net-tools \
        openssl \
        perl-net-telnet \
        procps \
        tcpdump \
        tcptraceroute \
        wget \
        && \
    # Extras
    if [ "${INSTALL_EXTRAS}" == "true" ] ; then \
        apk add --no-cache \
            apache2-utils \
            ethtool \
            git \
            iperf3 \
            lftp \
            mtr \
            mysql-client \
            netcat-openbsd \
            nmap \
            nmap-scripts \
            openssh-client \
            postgresql-client \
            rsync \
            socat \
            tshark \
            && \
        apk add --no-cache \
            ${INSTALL_ADDITIONAL_SHELL} \
            ; \
    fi && \
    mkdir /docker

CMD ["sleep", "infinity"]
