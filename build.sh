wget https://jenkins.openbmc.org/job/latest-master/label=docker-builder,target=romulus/lastSuccessfulBuild/artifact/openbmc/build/tmp/deploy/images/romulus/obmc-phosphor-initramfs-romulus.cpio.xz
wget https://jenkins.openbmc.org/job/latest-master/label=docker-builder,target=romulus/lastSuccessfulBuild/artifact/openbmc/build/tmp/deploy/images/romulus/flash-romulus
git clone --depth=1 https://github.com/openbmc/linux openbmc-linux
git clone --depth=1 https://salsa.debian.org/debian/sl.git
