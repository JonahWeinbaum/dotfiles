#
# ~/.bashrc
#

# Check for SSH Connection
if [[ -n $SSH_CONNECTION ]] ; then
    export COLORTERM=1
fi

export LESS_TERMCAP_mb=$'\e[1;31m'    # Bold red
export LESS_TERMCAP_md=$'\e[1;34m'    # Bold blue
export LESS_TERMCAP_me=$'\e[0m'       # Reset
export LESS_TERMCAP_se=$'\e[0m'       # Reset
export LESS_TERMCAP_so=$'\e[1;33m'    # Bold yellow
export LESS_TERMCAP_ue=$'\e[0m'       # Reset
export LESS_TERMCAP_us=$'\e[1;32m'    # Bold green


export MANPAGER="less -R --use-color" 
export MANROFFOPT="-P -c"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='colordiff'
alias objdump='objdump -d -Mintel -l --visualize-jumps --disassembler-color=on'
alias signal='signal-desktop --ozone-platform=wayland'

autoload -U colors && colors
PS1="%{$fg[cyan]%}%n%{$fg[blue]%}@%{$fg[magenta]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "



