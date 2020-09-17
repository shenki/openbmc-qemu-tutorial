FROM debian:unstable

COPY openbmc-linux /build/openbmc-linux
COPY flash-romulus /build/
COPY obmc-phosphor-initramfs-romulus.cpio.xz /build/
COPY gdbinit /root/.gdbinit

RUN apt update -qq && apt install -yy --no-install-recommends gcc gcc-arm-linux-gnueabi gdb-multiarch git make libssl-dev libelf-dev qemu-system-arm binutils ca-certificates bison flex wget bc xz-utils

ENV ARCH arm
ENV CROSS_COMPILE arm-linux-gnueabi-

WORKDIR /build
