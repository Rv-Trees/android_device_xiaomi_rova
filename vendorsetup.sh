#!/usr/bin/env bash

git clone --recursive --depth=1 -b fourteen https://github.com/Rv-Trees/android_kernel_xiaomi_msm8937.git kernel/xiaomi/rova

DIR="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"

# Remove the following intermediate buildinfo.prop file to trigger
# gen_from_buildinfo_sh rule in build/core/sysprop.mk. This will populate
# system/build.prop file with fresh infos when making "dirty" build.
rm -vf $OUT_DIR/target/product/$lunch_device/obj/PACKAGING/system_build_prop_intermediates/buildinfo.prop
