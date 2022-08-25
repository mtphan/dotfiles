#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias pls='sudo -E $(history -p !!)'
alias svim='sudo -E nvim'
alias pacman='sudo -E pacman'
[[ $TERM == 'xterm-kitty' ]] && alias ssh='kitty +kitten ssh'
[[ $TERM == 'xterm-kitty' ]] && alias diff='kitty +kitten diff'

# Enable git bash completion
source /usr/share/git/completion/git-completion.bash
source /opt/asdf-vm/asdf.sh

PS1='[\u@\h \W]\$ '

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n '$KITTY_INSTALLATION_DIR' -a -e '$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash'; then source '$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash'; fi
# END_KITTY_SHELL_INTEGRATION
