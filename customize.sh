#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.100.1/192.168.100.2/g' openwrt/package/base-files/files/bin/config_generate
cd package
git clone https://github.com/Ameykyl/luci-app-koolproxyR.git
src-git lienol https://github.com/Lienol/openwrt-package
./scripts/feeds update -a
./scripts/feeds install -a
