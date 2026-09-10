# Debian+XFCE Post Install

![Debian Xfce Screenshot](https://github.com/willyhorizont/linux-debian-xfce/blob/main/screenshot.jpg)  

1. Do [linux > post-install > debian-apt.md > A](https://github.com/willyhorizont/linux/blob/main/post-install/debian-apt.md#a)

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

8. Uncheck this in Session and Startup > Application Autostart:
```
screen locker (light-locker)
Print Queue Applet (system-config-printer)
Clipman (Clipboard Manager)
xiccd
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
Command=xcape -e 'Super_L=Alt_L|F1;Super_R=Alt_L|F1'
```

7. Install [linux > themes > gtk3.md](https://github.com/willyhorizont/linux/blob/main/themes/gtk3.md)

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

10. Do [linux > post-install > general.md > A](https://github.com/willyhorizont/linux/blob/main/post-install/general.md#a)

11. Change lock screen
```
# install
sudo apt install lightdm-gtk-greeter-settings -y

# copy image to:
/usr/share/images/

# change lock screen clock format to:
%a, %d %b %Y | %I:%M:%S %p
```

12. See [linux > cheatsheet > debian-apt.md](https://github.com/willyhorizont/linux/blob/main/cheatsheet/debian-apt.md)

13. See [linux > cheatsheet > general.md](https://github.com/willyhorizont/linux/blob/main/cheatsheet/general.md)
