#!/bin/bash
export CC=clang
export PATH=/home/qiuqiu/MandiSa-clang/bin:$PATH 
# CLANG_TRIPLE=aarch64-linux-gnu- 
# CROSS_COMPILE=aarch64-linux-gnu-
# CROSS_COMPILE_COMPAT=arm-linux-gnueabi- 
args="-j$(nproc --all) \
O=out \
ARCH=arm64 \
LLVM=1 \
LLVM_IAS=1 \
CLANG_TRIPLE=aarch64-linux-gnu- \
CROSS_COMPILE=aarch64-linux-gnu- \
CROSS_COMPILE_ARM32=arm-linux-gnueabi- \
LD=ld.lld "
make ${args} vendor/lahaina-qgki_defconfig CC="ccache clang" #savedefconfig
make ${args} CC="ccache clang"