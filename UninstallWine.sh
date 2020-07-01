#!/usr/bin/bash

#user warning
echo This uninstallation will REMOVE ALL wine related applications from the computer.
echo If you want to keep wine data then back it up to a separate flash drive or hard drive
echo Do you want to continue?
echo y/n

read decision

if [ "$decision" = "y" ]; then

    echo "Beginning Uninstallation"
    
else
	echo uninstallation stopped
	
	exit 0
fi

#normal wine uninstallation for different wine packages
sudo apt-get autoremove --purge wine64

sudo apt-get autoremove --purge wine32

sudo apt-get autoremove --purge wine


#find wine directory (it's in the home folder hidden) 
winePath=$(find / -xdev 2>/dev/null -name ".wine")

echo .wine directory: $winePath


#remove the wine directory
if rm -r $winePath ; then

	echo wine directory removed
	
else 

	echo could not delete wine directory
	echo You may have already manually found the .wine file and deleted it. If not then check to see if you have duplicate .wine folders by running this command: 
	echo "find / -xdev 2>/dev/null -name '.wine'"
	echo if you have multiple, then delete them manually 
	
fi


#change current directory to launchpad directory
if cd ~/.local/share/applications ; then

	echo successfully accessed launchpad directory
	
else

	echo failed to access launchpad directory
fi


#remove the wine apps from launchpad
if rm -rf wine* ; then

	echo successfully removed wine from launchpad
	
else 
	echo failed to remove wine from launchpad
	
fi


echo UNINSTALLATION COMPLETE
