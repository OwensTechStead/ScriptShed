#!/bin/bash
#
# A beginner level script I wrote for myself to quickly enumerate
# my Gnome Extensions situation.
#
clear
echo "================"
echo "Currently Enabled Extensions"
echo "================"
gsettings get org.gnome.shell enabled-extensions | sed 's/ / --> /g' | sed 's/\[/ --> /' | sed 's/,/\n/g' | sed 's/\]/\n/' | tr -d "']"
echo "================"
echo "User's Exclusive Extensions"
echo "================"
ls -al ~/.local/share/gnome-shell/extensions/
echo
echo "================"
echo "System-wide Extensions"
echo "================"
ls -al /usr/share/gnome-shell/extensions/
echo
