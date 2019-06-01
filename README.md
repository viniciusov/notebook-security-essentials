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

## Installation
First of all, you have to clone the [location-magic](https://github.com/unwiredlabs/location-magic) repo (or download as ZIP) and follow the instructions to install it. After installing it, you must register your device here: https://locationmagic.org/#how-it-works. Keep the TOKEN number you'll receive to further use it.

After that, clone the [logkeys](https://github.com/kernc/logkeys) repo (or download as ZIP) and follow the installation notes on the page to install it.

As a suggestion, before proceeding you can activate these two softwares in your device to test if they are working properly.
If everything is working just fine, now it's time to prepare yoir device...

## Requirements
In addition to the above softwares, you'll need:
- A Linux OS.
- Python3.

## Use at your own risk
I'm not the owner of any previously mentioned softwares and I'm not responsible for any law infringements.
