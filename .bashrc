#!/usr/bin/env bash
# Set XDG_CONFIG_HOME
export XDG_CONFIG_HOME="$HOME/.config"
export GLFW_IM_MODULE=ibus
export XMODIFIERS=@im=fcitx

# Add this lines at the top of .bashrc to use ble.sh:
[[ $- == *i* ]] && source -- ~/.local/share/blesh/ble.sh --attach=none

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias nv='nvim'
alias his='history'
alias ll='ls -lha'
alias gitree='git log --oneline --graph --color --all --decorate'
alias cl='clear'
alias nv='nvim'
alias kitty='kitty --override linux_display_server=x11'

# init zoxide for smart cd (?)
eval "$(zoxide init bash --cmd z)"
eval "$(starship init bash)"

# Add this line at the end of .bashrc to use ble.sh:
[[ ! ${BLE_VERSION-} ]] || ble-attach
export PATH="$HOME/.local/bin:$PATH"

. "$HOME/.atuin/bin/env"
eval "$(atuin init bash)"
