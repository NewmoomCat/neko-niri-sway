#!/bin/bash
# install-tools.sh - 仅安装软件包，不做任何配置修改

set -e

echo ">>> 正在更新软件包数据库..."
sudo pacman -Sy

echo ">>> 正在安装截图、启动器工具..."
sudo pacman -S --needed --noconfirm \
    grim \
    slurp \
    wl-clipboard \
    sway-contrib \
    rofi

echo ">>> 正在安装 GNOME 组件..."
sudo pacman -S --needed --noconfirm \
    nautilus \
    gnome-software

echo ">>> 正在安装权限与密钥环组件..."
sudo pacman -S --needed --noconfirm \
    polkit \
    polkit-gnome \
    gnome-keyring \
    libsecret

echo ">>> 正在安装 Portal 后端..."
sudo pacman -S --needed --noconfirm \
    xdg-desktop-portal \
    xdg-desktop-portal-wlr \
    xdg-desktop-portal-gtk

echo ">>> 正在安装 Sway 常用组件..."
sudo pacman -S --needed --noconfirm \
    sway \
    xorg-xwayland \
    mako \
    swaybg \
    swayidle \
    swaylock

echo ">>> 正在安装额外依赖（来自你的列表）..."
sudo pacman -S --needed --noconfirm --asdeps \
    gtkmm3 jsoncpp libsigc++ fmt wayland spdlog gtk3 \
    gobject-introspection libgirepository libpulse libnl libappindicator-gtk3 \
    libdbusmenu-gtk3 libmpdclient sndio libevdev libxkbcommon upower meson \
    cmake scdoc wayland-protocols glib2

echo ">>> 正在安装常用工具、输入法、字体、cava 与 matugen..."
sudo pacman -S --needed --noconfirm \
    htop \
    fcitx5 \
    fcitx5-gtk \
    fcitx5-qt \
    fcitx5-configtool \
    ttf-jetbrains-mono-nerd \
    cava \
    matugen

echo ""
echo ">>> 全部安装完成。"
