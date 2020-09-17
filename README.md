# OpenBMC Learning Series QEMU Tutorial

Use this Docker image to follow along with the slides from my tutoral. Build the image locally with:

```
bash build.sh
docker build . -t openbmc-qemu
```

Or pull it from docker hub:

```
$ docker pull shenki/openbmc-qemu
```

## The environment

You may prefer to install the tools on your Debian system instead of using
Docker, this will work on Debian 10 (testing). Other versions of Ubuntu and
Debian will work, but you will need to build QEMU as the packaged version is
too old.

```
sudo apt install gcc gcc-arm-linux-gnueabi gdb-multiarch git make libssl-dev \
 libelf-dev qemu-system-arm binutils ca-certificates bison flex wget bc xz-utils

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabi-

git clone https://github.com/openbmc/linux openbmc-linux
```
