#Update repositories JIC
sudo apt-get update
#
#Install both rdp servers JIC
sudo apt-get install xorgxrdp xrdp
#
#xfce4 works better, install xfce4 and it's fancy add ons
sudo apt-get install xfce4
sudo apt-get install xfce4-terminal
sudo apt-get install gnome-icon-theme tango-icon-theme
#
#tell xrdp that now im using xfce4 desktop
sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n xfce-session \n' /etc/xrdp/startwm.sh
#
#firewall exeption, enables rdp port
sudo ufw allow 3389/tcp
#
#restarts xrdp server, reboot is recomended
sudo /etc/init.d/xrdp restart
