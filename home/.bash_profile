#
# ~/.bash_profile
#

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export TERMINAL=kitty
export EDITOR=nvim

[[ -f ~/.bashrc ]] && . ~/.bashrc
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH=$PATH:$HOME/.local/bin:$GEM_HOME/bin

[[ -z ${DISPLAY} && ${XDG_VTNR} -eq 1 ]] && exec startx
