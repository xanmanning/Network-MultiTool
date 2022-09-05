FROM alpine:3.16

EXPOSE 80 443 1180 11443

# Install some tools in the container and generate self-signed SSL certificates.
# Packages are listed in alphabetical order, for ease of readability and ease of maintenance.
RUN     apk update --no-cache \
    &&  apk add --no-cache bash bind-tools busybox-extras curl \
                iproute2 iputils jq mtr \
                net-tools nginx openssl \
                perl-net-telnet procps tcpdump tcptraceroute wget \
    &&  mkdir /docker

CMD ["sleep", "infinity"]
