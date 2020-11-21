# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/louhmmsb/.oh-my-zsh"

# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="dracula"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Setting default editor
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/emacs

tmux attach &> /dev/null
if [[ ! $TERM =~ screen ]]; then
   exec tmux
fi


export CONFIG="/home/louhmmsb/Documents/Configs"

alias emacsc="emacsclient -nc"
export PATH="$PATH:/home/louhmmsb/go/pkg/mod/github.com/go-flutter-desktop/hover@v0.42.0"
export PATH="$PATH:/usr/lib"
export PATH="$PATH:$CONFIG/SCRIPTS"
export PATH="$PATH:/home/louhmmsb/racket/bin"
export PATH="$PATH:/home/louhmmsb/.emacs.d/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Print random splash art
$CONFIG/SCRIPTS/printColoredText

