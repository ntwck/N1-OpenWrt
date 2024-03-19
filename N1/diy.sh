#!/bin/bash

# Default IP
sed -i 's/192.168.1.1/192.168.1.10/g' package/base-files/files/bin/config_generate

# Remove packages
rm -rf feeds/luci/applications/luci-app-passwall feeds/packages/net/v2ray-geodata

# Add packages
#git clone https://github.com/nantayo/My-Pkg package/my-pkg
#git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/amlogic

# Add feed source
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git nas https://github.com/linkease/nas-packages.git;master' feeds.conf.default
sed -i '$a src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' feeds.conf.default
