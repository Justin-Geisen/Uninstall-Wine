# Uninstall-Wine

Uninstalling wine is a real pain. If you try to directly uninstall wine using the apt-get remove, it still leaves the windows programs on your computer and it leaves them in your launch pad which wastes memory and visual space. 

This program will take care of the whole uninstallation process for you. 

**Steps:**

1) Download respiratory

2) Unzip respiratory

3) chmod +x path/to/UninstallWine.sh

4) ./path/to/UninstallWine.sh

5) Congratuations!

## How it works

**First it uses the uninstallation command**

uses "apt get autoremove --purge" for wine, wine64, and wine32 installations

**The second step removes the .wine file from the home folder**

the wine directory that stores the windows programs is stored in the home folder

It is a hidden file, so if you wish to view it, then use control+h to see hidden files

This program automatically finds it and deletes it

Note: please be very cautious in opening up hidden folders and files. They are typically hidden because they don't want users messing around with it and breaking something.

**The Third step removes wine apps from the launchpad**

it navigates to ~/.local/share/applications then it removes then wine applications in that directory


