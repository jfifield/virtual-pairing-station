#!/bin/sh

apt-get -y install openjdk-8-jdk git gitk gitg meld terminator byobu emacs24

mkdir -p /home/developer/.byobu/
echo "set -g default-terminal \"screen-256color\"" >> /home/developer/.byobu/.tmux.conf

git clone https://github.com/syl20bnr/spacemacs /home/developer/.emacs.d

mkdir -p /home/developer/bin/
curl -o /home/developer/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod +x /home/developer/bin/lein

chown -R developer.developer /home/developer/
