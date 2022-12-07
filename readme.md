# sukipai-no-i3
i3wm 配置文件，包括了dunst,picom,polybar和rofi

## 依赖软件包
* i3wm (or i3-gaps)
* qt5ct (gtk 和 qt 的主题)
* iwd (网络管理)
* mate-power-manager (电源管理，调节亮度和省电模式设置)
* dunst (系统通知)
* picom (特效合成器，可以换成compton)
* polybar (顶栏)
* rofi (启动应用)
* alacritty (默认终端)
* feh (设置壁纸)
* pipewire (音频相关 alsamixer)
* bluedevil(蓝牙管理)
* lua (脚本语言，部分应用方面替代bash)
* gnome-keyring (密钥管理)
* network-manager network-manager-applet (图形化网络管理，否则只能 nmtui)
* fcitx5 fcitx5-configtool fcitx5-qt fcitx5-gtk fcitx5-chinese-addons fcitx5-material-color (输入法相关软件包)
* thunar (文件管理器)

## Other Applications
* gnome-clocks (时钟软件)
* gnome-screenshot (截图)

## 安装命令
使用
```bash
exec $(cat readme.md | grep pacman)
```
可以快速安装所有软件
```bash
sudo pacman -S i3 qt5ct iwd mate-power-manager dunst picom polybar rofi alacritty feh pipewire bluedevil gnome-keyring gnome-clocks gnome-screenshot lua network-manager-applet thunar
sudo pacman -S fcitx5 fcitx5-configtool fcitx5-qt fcitx5-gtk fcitx5-chinese-addons fcitx5-material-color
```

## 配置文件地址
`$HOME/.config/i3`  

## Unified Appearance (Qt and GTK)
**set environment variable in `/etc/profile`**  
`export QT_QPA_PLATFORMTHEME=qt5ct`  
and run this command `qt5ct` in terminal  

If you want the qt4/qt5 appearance the same as gtk theme, set style as `gtk2`.   
You can also change the fonts setting.
> more detail: [Uniform look for Qt and GTK applications](https://wiki.archlinux.org/index.php/Uniform_look_for_Qt_and_GTK_applications)

## 按键设置
It is basically the same as i3wm normal configure.  
There are some new functional keys in this i3wmconfig:  
* `mod + c`          open clock application
* `mod + T`          color temperature adjust  
* `mod + F1`         open the alsa to control volume
* `mod + F4`         open the bluetooth manager
* `mod + Shift + T`  cancel color temperature adjust  
* `mod + Shift + S`  open screenshot application
* `mod + o`          run `dunstctl` to close notification windows
* `mod + Shift + o`  run `dunstctl` to display history notification windows
* $left j
* $right l
* $up i
* $dowm k

## 触摸板设置
触摸板设置，启用“自然滚动”，“轻触单击”等。
文件位置:/usr/share/X11/xorg.conf.d/40-libinput.conf

Section "InputClass"
        Identifier "libinput touchscreen catchall"
        MatchIsTouchscreen "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
	Option "NaturalScrolling" "on"
	Option "TappingButtonMap" "lrm"
	Option "Tapping" "on"
EndSection

## 缩放设置
1. 在 ~ 目录下创建文件 .Xresources, 加入
Xft.dpi: 192
2. 数字计算方法
* 默认是96
* 填入 96x(你希望的缩放率)
3. 参考:
* 15.5寸笔记本，1920x1080,填144
* 15.5寸笔记本，2560x1440,填192
* 如果觉得太大了，可以调小, 建议为25%的倍数
4. 最后, 在.xinitrc 文件中加入
```bash
xrdb -merge ~/.Xresources
```

## 刷新率设置
xrandr 可以调节刷新率，但是每次都需要手动设置
在 .xinitrc 中加入
```bash
xrandr --output DP-4 --mode 2560x1440 --rate 165
```
按需修改命令即可，这样每次开机刷新率都会自动设置
