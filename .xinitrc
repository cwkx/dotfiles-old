[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
setxkbmap -layout gb
while true; do
    ~/repos/dotfiles/dwm/dwm 1> ~/.dwm.log 2>&1 || exit
done
