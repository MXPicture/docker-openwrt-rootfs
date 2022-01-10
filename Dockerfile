FROM openwrtorg/rootfs:latest
RUN opkg update \
    && opkg install python3