#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hypr='Hyprland;clear'

PS1='[\u@\h \W]\$ '

if [ "$TERM" = "xterm-kitty" ]; then
    export BUDS_MAC_ADDRESS="$(bluetoothctl devices | grep "Galaxy Buds Pro (909E)" | awk '{print $2}')"
    alias buds-connect='bluetoothctl connect "$BUDS_MAC_ADDRESS"'
    alias cfg-dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles-git/ --work-tree=$HOME'
    fastfetch
fi
