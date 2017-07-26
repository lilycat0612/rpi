#!/bin/sh
echo "Start Backup"
sudo tar --exclude /home/pi/mnt --exclude /home/pi/Downloads -zcvf /backup/home.tar.gz /home
sudo tar -zcvf /backup/boot.tar.gz /boot
sudo tar -zcvf /backup/etc.tar.gz /etc
echo "Finish Backup"
git add * >> /backup/backup.txt
echo "Finish Add"
git commit -m 'backup system' >> /backup/backup.txt
echo 'Finish Commit'
git push origin master >> /backup/backup.txt
echo "Finish push to GitHub"
