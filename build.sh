#!/bin/sh
DIR=$( cd "$( dirname "$0" )" && pwd )
echo $DIR

#make light variant
cp -r $DIR/Vertex $DIR/Vertex-Light
mv $DIR/Vertex-Light/gtk-2.0/gtkrc-light $DIR/Vertex-Light/gtk-2.0/gtkrc
mv $DIR/Vertex-Light/gtk-3.0/gtk-light.css $DIR/Vertex-Light/gtk-3.0/gtk.css
mv $DIR/Vertex-Light/index.theme-light $DIR/Vertex-Light/index.theme

mkdir $DIR/Gnome_3-12
cp -r $DIR/Vertex $DIR/Gnome_3-12/
cp -r $DIR/Vertex-Light $DIR/Gnome_3-12/

#make light 3.10 variant
mv $DIR/Vertex-Light/gtk-3.0/gtk-main-3-10.css $DIR/Vertex-Light/gtk-3.0/gtk-main.css
mv $DIR/Vertex-Light/gtk-3.0/gtk-main-dark-3-10.css $DIR/Vertex-Light/gtk-3.0/gtk-main-dark.css

#make light 3.10 variant
mv $DIR/Vertex/gtk-3.0/gtk-main-darker-3-10.css $DIR/Vertex/gtk-3.0/gtk-main-darker.css
mv $DIR/Vertex/gtk-3.0/gtk-main-dark-3-10.css $DIR/Vertex/gtk-3.0/gtk-main-dark.css
