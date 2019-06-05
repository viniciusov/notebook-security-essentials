#!/usr/bin/env bash

echo 'Installing...'
chmod +x *.sh *.py
chown root:root *
mkdir /usr/share/notebook-security-essentials
cp *.sh *.py /usr/share/notebook-security-essentials
echo '*/5 *   * * *   root	/usr/share/notebook-security-essentials/usertest.sh' >> /etc/crontab
echo 'Done!'
