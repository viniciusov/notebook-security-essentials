import smtplib

username = "<SENDER EMAIL>"
password = "<SENDER PASSWORD>"
servername = "<SERVER SMTP NAME>"
port = <SERVER PORT NUMBER>
destination = "<DESTINATION EMAIL>"

message = """\
Subject: Hello

Custom Message Here."""

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