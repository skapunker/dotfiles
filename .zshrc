export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.zsh_custom
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"

plugins=(
  git
  colored-man-pages
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if [ -f /usr/bin/screenfetch ]; then screenfetch; fi
