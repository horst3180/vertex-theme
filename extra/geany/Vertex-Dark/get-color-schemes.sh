#!/usr/bin/env bash
mkdir -p ~/.config/geany/colorschemes
cd /tmp
wget https://github.com/geany/geany-themes/releases/download/1.24/geany-themes-1.24.tar.bz2
tar -xvf geany-themes-1.24.tar.bz2
mv geany-themes-1.24/colorschemes/* ~/.config/geany/colorschemes
rm -rf geany-themes-1.24 geany-themes-1.24.tar.bz2
cd -
echo "Go to Geany > View > Editor > Color Schemes..."
echo "or add 'color_scheme=kugel.conf' to the [geany] section of '~/.config/geany/geany.conf'."
