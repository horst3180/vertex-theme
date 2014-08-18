#!/bin/sh
DIR=$( cd "$( dirname "$0" )" && pwd )

mkdir -p $DIR/Gnome_3-12
mkdir -p $DIR/Gnome_3-10

#make light 3.12 variant
cp -r $DIR/Vertex-gtk $DIR/Vertex-Light
mv $DIR/Vertex-Light/gtk-2.0/gtkrc-light $DIR/Vertex-Light/gtk-2.0/gtkrc
mv $DIR/Vertex-Light/gtk-3.0/gtk-light.css $DIR/Vertex-Light/gtk-3.0/gtk.css
mv $DIR/Vertex-Light/index.theme-light $DIR/Vertex-Light/index.theme

cp -r $DIR/Vertex-Light $DIR/Gnome_3-12/

#make dark 3.12 variant
cp -r $DIR/Vertex-gtk $DIR/Vertex
rm $DIR/Vertex/index.theme-light
#rm $DIR/Vertex/gtk-2.0/gtkrc-light

cp -r $DIR/Vertex $DIR/Gnome_3-12/

#make light 3.10 variant
mv $DIR/Vertex-Light/gtk-3.0/gtk-main-3-10.css $DIR/Vertex-Light/gtk-3.0/gtk-main.css
mv $DIR/Vertex-Light/gtk-3.0/gtk-main-dark-3-10.css $DIR/Vertex-Light/gtk-3.0/gtk-main-dark.css

mv $DIR/Vertex-Light $DIR/Gnome_3-10/

#make dark 3.10 variant
mv $DIR/Vertex/gtk-3.0/gtk-main-darker-3-10.css $DIR/Vertex/gtk-3.0/gtk-main-darker.css
mv $DIR/Vertex/gtk-3.0/gtk-main-dark-3-10.css $DIR/Vertex/gtk-3.0/gtk-main-dark.css

mv $DIR/Vertex $DIR/Gnome_3-10/

cd $DIR
zip -r Vertex-theme Chrome Gnome_3-10 Gnome_3-12 Vertex_alt_metacity Vertex-GS LICENSE README
