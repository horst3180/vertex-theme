# Vertex Theme

Vertex is a theme for GTK 3, GTK 2, Gnome-Shell and Cinnamon. It supports GTK 3 and GTK 2 based desktop environments like Gnome, Cinnamon, Mate, XFCE, Budgie, Pantheon, etc. Themes for the Browsers Chrome/Chromium and Firefox are included, too.

The theme comes with three variants to choose from. The default variant with dark header-bars, a light variant, and a dark variant.

### Requirements

* At least Gnome/GTK 3.10. This theme works with all versions up to 3.16.
* The `gnome-themes-standard` package for distros with Gnome/GTK 3.10 or 3.12.
* The `gtk2-engines-pixbuf` package only for Debian/Ubuntu based distros.
* The murrine engine. This has different names depending on your distro.
  * `gtk-engine-murrine` (Arch Linux)
  * `gtk2-engines-murrine` (Debian, Ubuntu, elementary OS)
  * `gtk-murrine-engine` (Fedora)
  * `gtk2-engine-murrine` (openSUSE)
  * `gtk-engines-murrine` (Gentoo)

Main distributions that meet these requirements are

* Arch Linux and Arch Linux based distros
* Ubuntu 14.04, 14.10 and 15.04
* elementary OS Freya
* Linux Mint 17.1
* Debian Jessie, Testing or Unstable
* Gentoo
* Fedora 20, 21 and 22
* OpenSuse 13.1, 13.2 and Tumbleweed

Derivatives of these distributions should work, aswell.

If your distribution is not listed, please check the requirements yourself.

### Installation

**Important:** Remove all older versions of the theme from your system before you proceed any further.

    sudo rm -rf /usr/share/themes/{Vertex,Vertex-Dark,Vertex-Light,Vertex-Gnome-Shell,Vertex-Gnome-Shell-3.16,Vertex-Cinnamon}
    rm -rf ~/.local/share/themes/{Vertex,Vertex-Dark,Vertex-Light,Vertex-Gnome-Shell,Vertex-Gnome-Shell-3.16,Vertex-Cinnamon}
    rm -rf ~/.themes/{Vertex,Vertex-Dark,Vertex-Light,Vertex-Gnome-Shell,Vertex-Gnome-Shell-3.16,Vertex-Cinnamon}

**Packages**

Prebuilt packages for Ubuntu, Debian, Fedora and openSUSE are available at 

http://software.opensuse.org/download.html?project=home%3AHorst3180&package=vertex-theme

Arch Linux users can install the theme from the AUR

https://aur.archlinux.org/packages/vertex-themes

https://aur.archlinux.org/packages/vertex-themes-git/

**Manual Installation**

To build the theme you need 
* `autoconf`
* `automake`
* `pkg-config` or `pkgconfig` if you use Fedora
* `libgtk-3-dev` for Debian based distros or `gtk3-devel` for RPM based distros
* `git` if you want to clone the source directory

If your distributions doesn't ship separate development packages you just need GTK 3 instead of the `-dev` packages.

Install the theme with the following commands

**1. Get the source**

If you want to install the latest version from git, clone the repository with

    git clone https://github.com/horst3180/vertex-theme --depth 1 && cd vertex-theme

If you want to install the latest stable release, run

    git clone https://github.com/horst3180/vertex-theme --depth 1 && cd vertex-theme
    git fetch --tags
    git checkout $(git describe --tags `git rev-list --tags --max-count=1`)

or download it from https://github.com/horst3180/Vertex-theme/releases and cd into the extracted archive

**2. Build and install the theme**

    ./autogen.sh --prefix=/usr
    sudo make install

Other options to pass to autogen.sh are

    --disable-cinnamon         disable Cinnamon support
    --disable-dark             disable Vertex Dark support
    --disable-gnome-shell      disable GNOME Shell support
    --disable-gtk2             disable GTK2 support
    --disable-gtk3             disable GTK3 support
    --disable-light            disable Vertex Light support
    --disable-metacity         disable Metacity support
    --disable-unity            disable Unity support
    --disable-xfwm             disable XFWM support

    --with-gnome=<version>     build the theme for a specific Gnome version (3.10, 3.12, 3.14, 3.16)
                               Note: Normally the correct version is detected automatically and this
                               option should not be needed.

After the installation is complete you can activate the theme with `gnome-tweak-tool` or a similar program by selecting `Vertex`, `Vertex-Light` or `Vertex-Dark`.

**Uninstall the theme**

Run

    sudo make uninstall

from the same directory as this README resides in, or

    sudo rm -rf /usr/share/themes/{Vertex,Vertex-Dark,Vertex-Light}

### Extras

The `extra` directory in the same directory as this README resides in contains Chrome/Chromium and Firefox themes, a fix for the Ubuntu-Software-Center when using the dark theme, a Plank theme and an alternative metacity theme, which hides the window titles of maximized windows (doesn't work on Gnome 3.16).

To install the Chrome/Chromium theme go to the `extra/Chrome` folder and drag and drop the Vertex.crx or Vertex-light.crx file into the Chrome/Chromium window. The source of the Chrome themes is located in the source "Chrome/source" folder.

To install the Firefox theme copy the `extra/Firefox/Vertex/chrome` folder to `~/.mozilla/firefox/yourprofile.default/` and restart Firefox.
Make sure that the `tools>options>content>colors use system colors` or `preferences>content>colors use system colors` checkbox is unchecked.
Themes for the variants Vertex-Light and Vertex-Dark are in the Firefox folder, too. Installation is the same.

To install the alternative metacity theme, copy the `Vertex_alt_metacity` folder to `/usr/share/themes` and select it as window theme.

To install the Plank theme, copy the `extra/Vertex-Plank` folder to `~/.local/share/plank/themes` or to `/usr/share/plank/themes` for system-wide use.
Now open the Plank preferences window by executing `plank --preferences` from a terminal and select `Vertex-Plank` as the theme.

### Troubleshooting

If you get artifacts like black or invisible backgrounds under Unity, disable overlay scrollbars with

    gsettings set com.canonical.desktop.interface scrollbar-mode normal
====

Ubuntu-Software-Center doesn't play nice with dark themes. If you are using Vertex-Dark under Ubuntu the software center will have unreadable text.
To fix this, install the Ubuntu-Software-Center fix. Instructions and relevant files are included in the `extra/Ubuntu-Software-Center` folder.


### Bug reporting
If you find a bug, please report it at https://github.com/horst3180/Vertex-theme/issues

![alt tag](http://orig09.deviantart.net/c221/f/2015/066/0/4/vertex___theme_by_horst3180-d7s7ycx.jpg)
