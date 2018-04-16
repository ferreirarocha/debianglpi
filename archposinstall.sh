virtualbox(){
sudo pacman -S virtualbox --noconfirm
sudo pacman -S virtualbox-host-modules-arch --noconfirm
sudo modprobe vboxdrv --noconfirm
yaourt virtualbox-ext-oracle --noconfirm
sudo pacman -S qt5-x11extras --noconfirm
sudo gpasswd -a marcos vboxusers 
}


comunicação(){
yaourt -S telegram-desktop-bin --noconfirm
}

graficos(){
yaourt -S vlc obs-studio gst-libav --noconfirm
yaourt -S inkscape gimp audacity --noconfirm 
yaourt -S kdenlive frei0r-plugins oxygen-icons breeze breeze-gtk dvdauthor kde-gtk-config --noconfirm 
sudo pacman -S oxygen-icons breeze  frei0r-plugins  breeze-gtk  --noconfirm
}


navegadores(){
yaourt -S firefox opera google-chrome vivaldi  yandex-browser-beta --noconfirm
}


feramentas(){
yaourt -S rsync gparted openssh htop nmap iptraf wget curl p7zip 
--noconfirm
}


personalize(){
yaourt -S gnome-shell-extension-installer  chrome-gnome-shell  --noconfirm
yaourt -S shadow-icon-theme paper-gtk-theme-git osx-arc-shadow paper-gtk-theme-git  --noconfirm
}


escritorio(){
yaourt -S  libreoffice-fresh-pt-BR zim  typora --noconfirm
}


webdesign(){
yaourt -S aptana-studio bluefish bluegriffon filezilla     --noconfirm
}


multimidia(){
sudo pacman -S emby-server --noconfirm
sudo systemctl start emby-server
sudo systemctl enable emby-server
}


virtualbox
comunicacao
graficos
ferramentas
personalize
escritorio
webdesign
multimidia
