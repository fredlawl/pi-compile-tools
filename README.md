# Compile PI Kernel

[Official Documentation](https://www.raspberrypi.com/documentation/computers/linux_kernel.html)

Run in order:
1. Download/Install kernel/build tools/toolchains from official documentation
2. Configure env.sh file for 32/64bit

> possibly apply this [patch](https://lore.kernel.org/all/20210810061350.754134-1-juergh@canonical.com/) for
32bit for arm-linux-gnueabihf-gcc-11 toolchain

3. `./prebuild.sh`
4. `./build.sh`
5. put in media
6. `./install.sh`
7. todo: use sshfs to install kernel remotely