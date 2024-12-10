#
# ~/.bashrc
#

# Check for SSH Connection
if [[ -n $SSH_CONNECTION ]] ; then
    figlet haystack;
    echo "                           (   )
                          (    )
                           (    )
                          (    )
                            )  )
                           (  (                  /\\
                            (_)                 /  \\  /\\
                    ________[_]________      /\\/    \\/  \\
           /\\      /\\        ______    \\    /   /\\/\\  /\\/\\
          /  \\    //_\\       \\    /\\    \\  /\\/\\/    \\/    \\
   /\\    / /\\/\\  //___\\       \\__/  \\    \\/
  /  \\  /\\/    \\//_____\\       \\ |[]|     \\
 /\\/\\/\\/       //_______\\       \\|__|      \\
/      \\      /XXXXXXXXXX\\                  \\
        \\    /_I_II  I__I_\\__________________\\
               I_I|  I__I_____[]_|_[]_____I
               I_II  I__I_____[]_|_[]_____I
               I II__I  I     XXXXXXX     I
            ~~~~~\"   \"~~~~~~~~~~~~~~~~~~~~~~~~"
    export COLORTERM=1
fi

# Regular Colors
BLACK='\[\e[0;30m\]'
RED='\[\e[0;31m\]'
GREEN='\[\e[0;32m\]'
YELLOW='\[\e[0;33m\]'
BLUE='\[\e[0;34m\]'
PURPLE='\[\e[0;35m\]'
CYAN='\[\e[0;36m\]'
WHITE='\[\e[0;37m\]'

# Bright Colors
BRIGHT_BLACK='\[\e[1;30m\]'
BRIGHT_RED='\[\e[1;31m\]'
BRIGHT_GREEN='\[\e[1;32m\]'
BRIGHT_YELLOW='\[\e[1;33m\]'
BRIGHT_BLUE='\[\e[1;34m\]'
BRIGHT_PURPLE='\[\e[1;35m\]'
BRIGHT_CYAN='\[\e[1;36m\]'
BRIGHT_WHITE='\[\e[1;37m\]'

# Reset Color
RESET='\[\e[0m\]'

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
alias emacs="emacs -nw"
alias magit='emacs --eval "(progn (magit-status) (delete-other-windows))"'
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias diff='colordiff'
alias objdump='objdump -d -Mintel -l --visualize-jumps --disassembler-color=on'
alias signal='signal-desktop --ozone-platform=wayland'
alias log="git log --graph --oneline --color"
PS1="[${BRIGHT_GREEN}\u${BLUE}@${PURPLE}\h ${BRIGHT_YELLOW}\W${RESET}]\$ "


