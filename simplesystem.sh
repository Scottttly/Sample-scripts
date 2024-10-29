#!/bin/bash
username=$(whoami)
echo "Hello, current user: $username"

echo "Testing internet..."
ping -c 5 google.com

echo "Disk usage..."
df -h

echo "Files in current directory..."
ls

echo -e "What directory do you want to back up?-->\c"
read ANS

echo "Performing backup..."
sleep 3
FILE=`echo $ANS | sed s#/#-#g`
DATE=`date +%F`
tar -zcvf ~/backup-$FILE-$DATE.tar.gz $ANS

echo "Backup completed successfully to ~/backup-$FILE.$DATE.tar.gz"
