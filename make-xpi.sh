#!/bin/bash

DIR=`dirname -- "$0"`
cd $DIR

VERSION=$(cat arc-firefox-theme/install.rdf | grep em:version | cut -f2 -d'>' | cut -f1 -d'<')

DEFAULT_GUID=52c2877e-44e1-11e5-8874-a62d1d5d46B0
DARKER_GUID=8a01dfcc-450f-11e5-909b-fb581d5d46b0
DARK_GUID=03cb16aa-4675-11e5-b233-213b1d5d46b0

#clean previous .xpi files
rm -f *.xpi

cp -r arc-firefox-theme arc-firefox-theme-light
cp -r arc-firefox-theme arc-firefox-theme-darker
cp -r arc-firefox-theme arc-firefox-theme-dark


# build default variant
cd arc-firefox-theme-light
cp chrome/browser/sass/browser-light.css chrome/browser/browser.css
rm -rf chrome/browser/sass

#pack extension
zip -FS -r ../arc-firefox-theme-$VERSION.xpi *
cd ..


# build darker variant
cd arc-firefox-theme-darker
cp chrome/browser/sass/browser-darker.css chrome/browser/browser.css
rm -rf chrome/browser/sass

#replace extension name
sed -i 's/arc-firefox-theme/arc-darker-firefox-theme/' chrome.manifest
sed -i 's/arc-firefox-theme/arc-darker-firefox-theme/' install.rdf
sed -i 's/Arc /Arc Darker /' install.rdf

#replace extension GUID
sed -i "s/$DEFAULT_GUID/$DARKER_GUID/" install.rdf

#pack extension
zip -FS -r ../arc-darker-firefox-theme-$VERSION.xpi *
cd ..


# build dark variant
cd arc-firefox-theme-dark
cp chrome/browser/sass/browser-dark.css chrome/browser/browser.css
rm -rf chrome/browser/sass

#replace extension name
sed -i 's/arc-firefox-theme/arc-dark-firefox-theme/' chrome.manifest
sed -i 's/arc-firefox-theme/arc-dark-firefox-theme/' install.rdf
sed -i 's/Arc /Arc Dark /' install.rdf

#replace extension GUID
sed -i "s/$DEFAULT_GUID/$DARK_GUID/" install.rdf

#pack extension
zip -FS -r ../arc-dark-firefox-theme-$VERSION.xpi *
cd ..

rm -rf arc-firefox-theme-light arc-firefox-theme-darker arc-firefox-theme-dark
