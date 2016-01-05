#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#CONFIG ENV VARS
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.config"
export EDITOR=subl3
export LANG=en_US.UTF-8
export PANEL_FIFO="/tmp/panel-fifo/"

# start x automatically
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] & exec startx
