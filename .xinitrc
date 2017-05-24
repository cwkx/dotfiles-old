[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
setxkbmap -layout gb
~/repos/dstatus/dstatus&
while true; do
    ~/repos/dwm/dwm 1> ~/.dwm.log 2>&1 || exit
done
