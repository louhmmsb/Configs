export CONFIG="$HOME/Configs/Configs"

# Print random splash art
#$CONFIG/SCRIPTS/printColoredText

# Print neofetch
neofetch --kitty $CONFIG/NEOFETCH/slime.jpg

# Setting default editor
export EDITOR=/usr/bin/nvim

# Aliases
alias emacsc="emacsclient -nc"
alias ssh="TERM=xterm ssh" # For not breaking terminal when I open ssh
alias ls="exa"
alias find="fd"
alias cat="bat"
alias open="xdg-open"
alias cd="z"

[ -f "/home/louhmmsb/.ghcup/env" ] && source "/home/louhmmsb/.ghcup/env" # ghcup-env

# For vim keybindings on terminal
# bindkey -v
