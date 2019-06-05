# notebook-security-essentials
A great wrapper to protect your notebook or other devices from thieves.

## Motivation
If you have an expensive device, such as a notebook, you probably already though: *"What if someone steal me?"*  
Well, in most of the cases you can't do too much more than calling the cops.
But you can think in some ways to prepare your device to send you crucial informations that can show its current location and other thief's personal information.

## About
To acomplish that, I made a small but efficient bash script to handle these required softwares:
- [location-magic](https://github.com/unwiredlabs/location-magic)
- [logkeys](https://github.com/kernc/logkeys)

With these two softwares you can **track your device** and get **whatever information the thief typed** as soon as your device connects to a Wifi network.  
If someone loggins in as a Guest, every 5 minutes you'll receive an e-mail with the instructions to locate your device and everything he or she typed.

*Picture this: if the thief is dumb enough to buy something using your notebook (type his Credit Card information), you can even buy a BRAND NEW NOTEBOOK with his account! Oh sweet Revenge!!!  
(I don't know if this is legal, but it's very cool, right?)*

## Requirements
In addition to the above softwares, you'll need:
- A Linux OS.
- Python3.

## Installation
First of all, you have to clone the [location-magic](https://github.com/unwiredlabs/location-magic) repo (or download as ZIP) and follow the instructions to install it. After installing it, you must register your device here: https://locationmagic.org/#how-it-works. Keep the TOKEN number you'll receive to further use it.

After that, clone the [logkeys](https://github.com/kernc/logkeys) repo (or download as ZIP) and follow the installation notes on the page to install it.

As a suggestion, before proceeding you can activate these two softwares in your device to test if they are working properly.
See the [logkeys page](https://github.com/kernc/logkeys) about how to run it. It's very likely you have to choose a specific keymap (inside *keymaps* directory) to ajust the characters mapping with this command:
`logkeys --start --keymap <my_lang.keymap>`.  
The notebook-security-essentials uses the *Ubuntu keymap* by default, but you can change it later.

If everything is working just fine, now it's time to prepare your device...

Check if your Operational System already allow users login as Guests without password.  
If not, you must **Allow Guest Users** (check your OS documentation if you don't know how to do it).

Now, clone this repository:  
`git clone https://github.com/viniciusov/notebook-security-essentials.git`

Go to the directory:  
`cd notebook-security-essentials`

And execute the script to install it:  
`./install.sh`

Adust the *usertest.sh* installed with your text editor (I'm using *vim* here) and **Replace the Keymap and Token by yours**:
`sudo vim /usr/share/notebook-security-essentials/usertest.sh`

Now it's time to declare how the e-mail will be sent to you.
I suggest to create a new account for this service because you'll have to hardcode the e-mail password, so it's not a good idea to use your main e-mail...

Edit the file *send_email.py*, inserting your *username*, *password*, *servername*, *port* and *destination* (where the e-mail should send to):  
`sudo vim /usr/share/notebook-security-essentials/send_email.py`

For this file, you will need to provide some SMTP outgoing configuration. Check on the internet about the SMTP configuration to your specific webmail server (**TLS encryption is required**).  
If you are using *Hotmail*, *Msn* or *Outlook.com* (like I'm) here are the details:
>servername = "smtp.office365.com"  
>port = 587  

Open the */etc/crontab* file:
`sudo vim /etc/crontab` (Must run it with sudo)
  
Add append this line at the end of the *crontab* file (I'm using a time interval of 5 minutes, but you can define another interval here):  
`*/5 * * * * 	root 	/usr/share/notebook-security-essentials/usertest.sh`
  
## Use at your own risk
I'm not the owner of any previously mentioned softwares and I'm not responsible for any law infringements.
