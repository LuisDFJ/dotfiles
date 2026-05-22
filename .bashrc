#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hypr='start-hyprland;clear'

export HISTFILE=~/.bash_hist/.bash_history

PS1='[\u@\h \W]\$ '

export PATH=~/.npm-global/bin:~/.cargo/bin:$PATH
export PICO_SDK_PATH=~/workspace/devel/pico-sdk/

if [ "$TERM" = "xterm-kitty" ]; then
    export BUDS_MAC_ADDRESS="$(echo devices | bluetoothctl | grep -oP '(?<=Device )(.*)(?= Galaxy Buds Pro)')"
    alias buds-connect='echo connect "$BUDS_MAC_ADDRESS" | bluetoothctl --timeout 1'
    alias cfg-dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles-git/ --work-tree=$HOME'
    alias get-idf='. ~/workspace/esp/esp-idf/export.sh'
    fastfetch
fi


