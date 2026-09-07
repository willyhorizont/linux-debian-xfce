# Debian+XFCE Post Install

## Change password
```
sudo -i
passwd
exit
passwd "$USER"
exit
```

## change closest faster mirror
```
/etc/apt/sources.list
```

## Refresh metadata and upgrade all system packages
```
sudo apt update && sudo apt upgrade
```

## Github login
```
sudo apt install gh git
git config --global init.defaultBranch main
gh auth login
```

## Disable beep
```
xset b off
xfconf-query -c xfce4-desktop -p /backends/bell -s false 2>/dev/null || xfconf-query -c xfce4-mixers -p /sound-bell -s false 2>/dev/null
echo "blacklist pcspkr" | sudo tee /etc/modprobe.d/nobeep.conf
sudo rmmod pcspkr
```
```
xfconf-query -c xfce4-accessibility -p /Accessibility/AudioBell -s false --create -t bool
xset b off
echo -e "[Desktop Entry]\nType=Application\nName=Disable X11 Bell\nExec=xset b off\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true" > ~/.config/autostart/disable-bell.desktop
```

## Disable screen locker
```
# toggle screen locker (light-locker) in autostart
```

## Install bluetooth
```
sudo apt install blueman -y
```

## Install pinned + opened window list
```
sudo apt install xfce4-docklike-plugin -y
```

## Turn on super key on startup
```
sudo apt install xcape -y
```
```
Name=Xcape Super Key
Description=Open xfce4-popup-whiskermenu on Super key press
Command=xcape -e Super_L=Alt_L|F1;Super_R=Alt_L|F1
```

## Cursor
```
sudo apt install dmz-cursor-theme -y
sudo apt install breeze-cursor-theme -y
sudo update-alternatives --config x-cursor-theme
```

## Icon theme
```
sudo apt install papirus-icon-theme
```

## Style theme
```
sudo apt install yaru-theme-gtk
```

## Window theme
```
sudo apt install greybird-gtk-theme -y
```

## Change start menu icon button size, make bigger
```
sudo mousepad ~/.config/gtk-3.0/gtk.css
```
```
#whiskermenu-button image {
    -gtk-icon-transform: scale(1.4);
}
```

## ABDownloadManager Killer
```
echo -e "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Exit ABDownloadManager\nComment=Kill ABDownloadManager Process\nExec=pkill -f ABDownloadManager\nIcon=process-stop\nCategories=Utility;\nTerminal=false\nStartupNotify=false" > ~/.local/share/applications/exit-abdownloadmanager.desktop
update-desktop-database ~/.local/share/applications/ && xfce4-panel --restart
xfwm4 --replace &
```

## Change lock screen
```
sudo apt install lightdm-gtk-greeter-settings -y
```
```
/usr/share/backgrounds/
```
```
/usr/share/images/
```