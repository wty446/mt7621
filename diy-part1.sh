#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/kenzok8/openwrt-packages package/openwrt-packages
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
rm -rf ./package/lean/luci-app-zerotier
git clone https://github.com/immortalwrt/luci-app-unblockneteasemusic.git ./package/lean/luci-app-unblockneteasemusic
rm -rf ./package/lean/luci-theme-argon 
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git /package/lean/luci-theme-argon
rm -rf ./package/lean/luci-app-zerotier
git clone https://github.com/alloneinfo/luci-app-zerotier ./package/lean/luci-app-zerotier
