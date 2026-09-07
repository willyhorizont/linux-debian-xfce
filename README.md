# Debian+XFCE Post Install

1. Do linux > post-install > debian-apt.md > A

2. Disable beep
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

3. Disable screen locker
```
# toggle screen locker (light-locker) in autostart
```

4. Install bluetooth
```
sudo apt install blueman -y
```

5. Install pinned + opened window list
```
sudo apt install xfce4-docklike-plugin -y
```

6. Turn on super key on startup
```
sudo apt install xcape -y
```
```
Name=Xcape Super Key
Description=Open xfce4-popup-whiskermenu on Super key press
Command=xcape -e Super_L=Alt_L|F1;Super_R=Alt_L|F1
```

7. Install linux > themes > gtk3

8. Apply Cursor theme globally
```
sudo update-alternatives --config x-cursor-theme
```

9. Change start menu icon button size, make bigger
```
sudo mousepad ~/.config/gtk-3.0/gtk.css
```
```
#whiskermenu-button image {
    -gtk-icon-transform: scale(1.4);
}
```

10. Do linux > post-install > general.md > A

11. Change lock screen
```
sudo apt install lightdm-gtk-greeter-settings -y
```
```
/usr/share/backgrounds/
```
```
/usr/share/images/
```

12. See linux > cheatsheet > debian-apt.md