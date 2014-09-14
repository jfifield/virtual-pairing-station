#!/bin/sh

# Based on instructions at https://www.digitalocean.com/community/tutorials/how-to-setup-vnc-for-ubuntu-12

apt-get -y install xubuntu-desktop tightvncserver

/usr/sbin/useradd -m -G sudo developer
echo developer:dev | chpasswd

mkdir -p /home/developer/.vnc/
echo "vnc123" | vncpasswd -f > /home/developer/.vnc/passwd
chmod 600 /home/developer/.vnc/passwd

cp files/xstartup /home/developer/.vnc/
chmod +x /home/developer/.vnc/xstartup

# work around for missing tab completion when using xfce in vnc server, http://ubuntuforums.org/archive/index.php/t-1771058.html
mkdir -p /home/developer/.config/xfce4/xfconf/xfce-perchannel-xml/
cp files/xfce4-keyboard-shortcuts.xml /home/developer/.config/xfce4/xfconf/xfce-perchannel-xml/

chown -R developer.developer /home/developer/

cp files/vncserver /etc/init.d/
chmod +x /etc/init.d/vncserver
update-rc.d vncserver defaults
/etc/init.d/vncserver start
