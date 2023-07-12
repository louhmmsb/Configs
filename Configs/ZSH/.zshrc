export CONFIG="$HOME/Configs/Configs"
# Print random splash art
#$CONFIG/SCRIPTS/printColoredText

# Print neofetch
neofetch --kitty $CONFIG/NEOFETCH/slime.jpg

plugins=(git zsh-syntax-highlighting) 

# Setting default editor
export EDITOR=/usr/bin/nvim

export PATH="$PATH:$HOME/go/pkg/mod/github.com/go-flutter-desktop/hover@v0.42.0"
export PATH="$PATH:/usr/lib"
export PATH="$PATH:$CONFIG/SCRIPTS"
export PATH="$PATH:$HOME/racket/bin"
export PATH="$PATH:$HOME/.emacs.d/bin"
export PATH="$PATH:$HOME/doom-emacs/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/anaconda3/bin"
export PATH="$PATH:$HOME/.local/share/coursier/bin"
export PATH="$PATH:$HOME/.cache/coursier/jvm/adopt@1.11.0-11/bin"
export PATH="$PATH:$HOME/.local/bin"

# Aliases
alias emacsc="emacsclient -nc"
alias ssh="TERM=xterm ssh" # For not breaking terminal when I open ssh
alias ls="exa"
alias find="fd"
alias cat="bat"
alias open="xdg-open"

[ -f "/home/louhmmsb/.ghcup/env" ] && source "/home/louhmmsb/.ghcup/env" # ghcup-env
eval "$(starship init zsh)"

# From vim keybindings on terminal
# bindkey -v