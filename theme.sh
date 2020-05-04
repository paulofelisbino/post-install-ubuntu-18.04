#!/bin/bash

start_section "theme"

#gtk
git clone https://github.com/daniruiz/flat-remix-gtk "$DOWNLOADS_DIR/flat-remix-gtk"

#icons
git clone https://github.com/daniruiz/flat-remix "$DOWNLOADS_DIR/flat-remix"

ICONS_DIR="$HOME/.icons"
THEMES_DIR="$HOME/.themes"
mkdir -p "$ICONS_DIR" && mkdir -p "$THEMES_DIR"

cd "$DOWNLOADS_DIR"
cp -r flat-remix/Flat-Remix* "$ICONS_DIR"
cp -r flat-remix-gtk/Flat-Remix-GTK* "$THEMES_DIR"
cd -

cp ./wallpaper/wallpaper.jpg $HOME/Pictures

finish_section "theme"