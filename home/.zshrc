#bash stuffs
export -f timeout

# oh-my-zsh vars
ZSH=/usr/share/oh-my-zsh/

# theme
ZSH_THEME="punctual"

export VISUAL=nvim
export EDITOR=nvim


# Paths
export configd="$HOME/.config"
export work="$HOME/work/"

# Aliases
alias zedit='nvim $HOME/.zshrc'
alias zload='source $HOME/.zshrc'
alias credit='nvim $configd/alacritty/alacritty.yml'
alias hypredit='nvim $configd/hypr/hyprland.conf'
alias wayedit='sudo nvim $configd/waybar/config'
alias walledit='nvim $configd/hypr/hyprpaper.conf'
alias lastresort='hyprctl dispatch exit'
alias ll='lsd -lah'

# oh-my-zsh stuffs

# plugins
plugins=(git)

ZSH_CACH_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zhistfile

#completion
autoload -Uz compinit
compinit

source /usr/share/zsh/scripts/zplug/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "zsh-users/zsh-completions", from:oh-my-zsh

if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

zplug load --verbose

clear
