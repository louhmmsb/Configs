# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  #source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="dracula"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Setting default editor
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/emacs

tmux attach &> /dev/null
if [[ ! $TERM =~ screen ]]; then
   exec tmux
fi


export CONFIG="$HOME/Documents/Configs"

alias emacsc="emacsclient -nc"
export PATH="$PATH:$HOME/go/pkg/mod/github.com/go-flutter-desktop/hover@v0.42.0"
export PATH="$PATH:/usr/lib"
export PATH="$PATH:$CONFIG/SCRIPTS"
export PATH="$PATH:$HOME/racket/bin"
export PATH="$PATH:$HOME/.emacs.d/bin"

[ -f "/home/louhmmsb/.ghcup/env" ] && source "/home/louhmmsb/.ghcup/env" # ghcup-env
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Print random splash art
$CONFIG/SCRIPTS/printColoredText

