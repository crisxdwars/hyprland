#!/bin/env bash

echo "Installing Dependencies..."

sudo pacman -S waybar swaybg gpu-screen-recorder wl-clipboard slurp grim ttf-fira-code ttf-fira-code noto-fonts-cjk zip unzip pavucontrol --noconfirm

echo "checking directories..."
mkdir -p ~/.config
mkdir -p /home/$USER/Pictures
echo "copying wofi configurations..."
cp -r wofi ~/.config
echo "installing dunst configurations..."
cp -r dunst ~/.config
echo "installing hyprland configurations..."
cp -r hypr ~/.config
echo "installing waybar configurations..."
cp -r waybar ~/.config
echo "installing kitty configurations..."
cp -r kitty ~/.config
echo "installing cursor configurations..."
cp -r cursor/* ~/.local/share/icons
echo "installing wallpapers..."
cp -r wallpaper /home/$USER/Pictures/
echo "Setup Complete!"
