# Arc Firefox Theme

Offical [Arc](https://github.com/horst3180/Arc-theme) Firefox theme.

#####Arc Firefox

![alt tag](http://i.imgur.com/plmizlD.png)

#####Arc Darker Firefox

![alt tag](http://i.imgur.com/1UyKNiH.png)

#####Arc Dark Firefox

![alt tag](http://i.imgur.com/c8dtVcq.png)


### Requirements
This theme is compatible with Firefox 40+.

**Note**: This theme is meant to be used in conjunction with the [Arc GTK theme](https://github.com/horst3180/Arc-theme), don't use it with other GTK themes or it will look broken.

### Installation

Donwload the .xpi files from [here](https://github.com/horst3180/arc-firefox-theme/releases)

Drag-and-drop these files into the Firefox window. Firefox will then prompt you to install the theme.

#### Manual building and installation

These instructions are for testers and package maintainers. They also allow to install the theme globally for all users.

You will need `autoconf` and `automake` for the following.

Generate the .xpi files

    ./autogen.sh --prefix=/usr
    make mkxpi

The theme can be installed globally with

    ./autogen.sh --prefix=/usr
    sudo make install

Other build options to append to `autogen.sh` are

    --disable-light         disable Arc Light Firefox support
    --disable-darker        disable Arc Darker Firefox support
    --disable-dark          disable Arc Dark Firefox support

Uninstall the theme with

    sudo make uninstall
