# beauty-dark-i3
A **dark** theme about i3wm, include dunst, picom, polybar and rofi.  

## Dependency
* i3wm (or i3-gaps)
* qt5ct, qt5-styleplugins (unified appearance between gtk and qt)
* nm-applet ([NetworkManager](https://wiki.archlinux.org/index.php/NetworkManager))
* xfce4-power-manager (used to adjust backlight)
* dunst (used to system notice)
* picom (or compton)
* polybar
* rofi
* xfce4-terminal
* feh (used to set background image)
* redshift (used to set color temperature)
* pulseaudio (pavucontrol)
* blueman (blueman-manager)
* gnome-keyring (password keyring manager, some applications to use it)

## Other Applications
* gnome-clocks (clock and timer)
* gnome-todo   (schedule)
* gnome-screenshot (screenshot)

## Install Command
```bash
sudo pacman -S i3 qt5ct networkmanager xfce4-power-manager dunst picom polybar rofi alacritty feh redshift pipewire blueman gnome-keyring gnome-clocks gnome-screenshot
```

## Location
`$HOME/.config/i3`  

## Unified Appearance (Qt and GTK)
**set environment variable in `/etc/profile`**  
`export QT_QPA_PLATFORMTHEME=qt5ct`  
and run this command `qt5ct` in terminal  

If you want the qt4/qt5 appearance the same as gtk theme, set style as `gtk2`.   
You can also change the fonts setting.
> more detail: [Uniform look for Qt and GTK applications](https://wiki.archlinux.org/index.php/Uniform_look_for_Qt_and_GTK_applications)

## Key Setting
It is basically the same as i3wm normal configure.  
There are some new functional keys in this i3wmconfig:  
* `mod + c`          open clock application
* `mod + T`          color temperature adjust  
* `mod + F1`         open the pulseaudio to control volume
* `mod + F4`         open the bluetooth manager
* `mod + Shift + T`  cancel color temperature adjust  
* `mod + Shift + S`  open screenshot application
* `mod + o`          run `dunstctl` to close notification windows
* `mod + Shift + o`  run `dunstctl` to display history notification windows
