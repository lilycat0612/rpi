#!/bin/sh
echo "Start Backup"
sudo tar --exclude /home/pi/mnt --exclude /home/pi/Downloads -zcvf /backup/home.tar.gz /home
sudo tar -zcvf /backup/boot.tar.gz /boot
sudo tar -zcvf /backup/etc.tar.gz /etc
echo "Finish Backup"
sudo git add *
echo "git add"
sudo git commit -m 'backup system'
echo 'git commit'
git push origin master
echo "Finish push to GitHub"
