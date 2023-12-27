#!/bin/bash
#
# A beginner level script I wrote for myself to quickly enumerate
# my Gnome Extensions situation.
#
clear
echo "================"
echo "Currently Enabled Extensions"
echo "================"
gsettings get org.gnome.shell enabled-extensions | sed 's/ / --> /g;s/\[/ --> /;s/,/\n/g' | tr -d "']" | sort -i
echo
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
