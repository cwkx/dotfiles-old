[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xset r rate 200 40
setxkbmap gb
while true; do
    ~/repos/dwm/dwm 1> ~/.dwm.log 2>&1 || exit
done
