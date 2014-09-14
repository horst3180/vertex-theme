#!/bin/sh
DIR=$( cd "$( dirname "$0" )" && pwd )

rm $DIR/Vertex-gtk/gtk-3.0/assets.svg
rm $DIR/Vertex-gtk/gtk-3.0/assets.txt
rm $DIR/Vertex-gtk/gtk-3.0/borders.txt
rm $DIR/Vertex-gtk/gtk-3.0/render-assets.sh
rm $DIR/Vertex-gtk/gtk-3.0/render-borders.sh

rm $DIR/Vertex-gtk-3.14/gtk-3.0/assets.svg
rm $DIR/Vertex-gtk-3.14/gtk-3.0/assets.txt
rm $DIR/Vertex-gtk-3.14/gtk-3.0/borders.txt
rm $DIR/Vertex-gtk-3.14/gtk-3.0/render-assets.sh
rm $DIR/Vertex-gtk-3.14/gtk-3.0/render-borders.sh

mkdir -p $DIR/Gnome-3.14
mkdir -p $DIR/Gnome-3.12
mkdir -p $DIR/Gnome-3.10_Ubuntu-14.04

#make light 3.14 variant
cp -r $DIR/Vertex-gtk-3.14 $DIR/Vertex-Light
rm -rf $DIR/Vertex-Light/gtk-2.0-dark
mv $DIR/Vertex-Light/gtk-2.0/gtkrc-light $DIR/Vertex-Light/gtk-2.0/gtkrc
mv $DIR/Vertex-Light/gtk-3.0/gtk-light.css $DIR/Vertex-Light/gtk-3.0/gtk.css
mv $DIR/Vertex-Light/index.theme-light $DIR/Vertex-Light/index.theme
rm $DIR/Vertex-Light/index.theme-dark

mv $DIR/Vertex-Light $DIR/Gnome-3.14/

#make dark 3.14 variant
cp -r $DIR/Vertex-gtk-3.14 $DIR/Vertex-Dark
rm -rf $DIR/Vertex-Dark/gtk-2.0
rm $DIR/Vertex-Dark/index.theme-light
mv $DIR/Vertex-Dark/gtk-2.0-dark $DIR/Vertex-Dark/gtk-2.0
mv $DIR/Vertex-Dark/gtk-3.0/gtk-dark.css $DIR/Vertex-Dark/gtk-3.0/gtk.css
mv $DIR/Vertex-Dark/index.theme-dark $DIR/Vertex-Dark/index.theme

mv $DIR/Vertex-Dark $DIR/Gnome-3.14/

#make default 3.14 variant
cp -r $DIR/Vertex-gtk-3.14 $DIR/Vertex
rm -rf $DIR/Vertex/gtk-2.0-dark
rm $DIR/Vertex/index.theme-light
rm $DIR/Vertex/index.theme-dark

mv $DIR/Vertex $DIR/Gnome-3.14/

#make light 3.12 variant
cp -r $DIR/Vertex-gtk $DIR/Vertex-Light
rm -rf $DIR/Vertex-Light/gtk-2.0-dark
mv $DIR/Vertex-Light/gtk-2.0/gtkrc-light $DIR/Vertex-Light/gtk-2.0/gtkrc
mv $DIR/Vertex-Light/gtk-3.0/gtk-light.css $DIR/Vertex-Light/gtk-3.0/gtk.css
mv $DIR/Vertex-Light/index.theme-light $DIR/Vertex-Light/index.theme
rm $DIR/Vertex-Light/index.theme-dark

cp -r $DIR/Vertex-Light $DIR/Gnome-3.12/

#make dark 3.12 variant
cp -r $DIR/Vertex-gtk $DIR/Vertex-Dark
rm -rf $DIR/Vertex-Dark/gtk-2.0
rm $DIR/Vertex-Dark/index.theme-light
mv $DIR/Vertex-Dark/gtk-2.0-dark $DIR/Vertex-Dark/gtk-2.0
mv $DIR/Vertex-Dark/gtk-3.0/gtk-dark.css $DIR/Vertex-Dark/gtk-3.0/gtk.css
mv $DIR/Vertex-Dark/index.theme-dark $DIR/Vertex-Dark/index.theme

cp -r $DIR/Vertex-Dark $DIR/Gnome-3.12/

#make default 3.12 variant
cp -r $DIR/Vertex-gtk $DIR/Vertex
rm -rf $DIR/Vertex/gtk-2.0-dark
rm $DIR/Vertex/index.theme-light
rm $DIR/Vertex/index.theme-dark

cp -r $DIR/Vertex $DIR/Gnome-3.12/

#make light 3.10 variant
mv $DIR/Vertex-Light/gtk-3.0/gtk-main-3-10.css $DIR/Vertex-Light/gtk-3.0/gtk-main.css
mv $DIR/Vertex-Light/gtk-3.0/gtk-main-dark-3-10.css $DIR/Vertex-Light/gtk-3.0/gtk-main-dark.css

mv $DIR/Vertex-Light $DIR/Gnome-3.10_Ubuntu-14.04/

#make dark 3.10 variant
mv $DIR/Vertex-Dark/gtk-3.0/gtk-main-dark-3-10.css $DIR/Vertex-Dark/gtk-3.0/gtk-main-dark.css

mv $DIR/Vertex-Dark $DIR/Gnome-3.10_Ubuntu-14.04/

#make default 3.10 variant
mv $DIR/Vertex/gtk-3.0/gtk-main-darker-3-10.css $DIR/Vertex/gtk-3.0/gtk-main-darker.css
mv $DIR/Vertex/gtk-3.0/gtk-main-dark-3-10.css $DIR/Vertex/gtk-3.0/gtk-main-dark.css

mv $DIR/Vertex $DIR/Gnome-3.10_Ubuntu-14.04/

cd $DIR
zip -r Vertex-theme Chrome Gnome-3.10_Ubuntu-14.04 Gnome-3.12 Gnome-3.14 Vertex_alt_metacity Vertex-GS LICENSE README
