#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.100.1/192.168.100.2/g' openwrt/package/base-files/files/bin/config_generate
git clone https://github.com/Ameykyl/luci-app-koolproxyR.git
git clone https://github.com/Lienol/openwrt-package.git
./scripts/feeds update -a
./scripts/feeds install -a
