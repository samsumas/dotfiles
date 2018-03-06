alias rm='rm -I'
alias info='info --vi-keys'
alias maxima='rlwrap maxima'
alias o='. ~/Skripte/xdg-open.sh'
alias univpn='sudo openconnect -u s8sashal asa2.uni-saarland.de'
alias dimscreen='sleep 0.5 ; and xset dpms force off'
alias pacman='sudo pacman'
alias systemctl="sudo systemctl"
alias pwd="pwd -P"
alias mosml='rlwrap mosml'
alias youtubemp3="youtube-dl -i -x --audio-quality 0"
alias mount="udisks -p"
set_bg="feh --bg-center ~/Pictures/foxbg.png"
alias sndScreenVGA="xrandr --output LVDS1 --primary --auto --output VGA1 --above LVDS1 --auto ; $set_bg"
alias sndScreenHDMI="xrandr --output LVDS1 --primary --auto --output HDMI1 --above LVDS1 --auto ; $set_bg"
alias Cformat="clang-format -style='{BasedOnStyle: Mozilla, IndentWidth: 4}'"
