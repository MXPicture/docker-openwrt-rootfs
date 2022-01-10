FROM openwrtorg/rootfs:latest

EXPOSE 80

RUN mkdir /var/lock && \
    opkg update && \
    opkg install python3

USER root

# using exec format so that /sbin/init is proc 1 (see procd docs)
CMD ["/sbin/init"]
