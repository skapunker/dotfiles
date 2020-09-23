export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

plugins=(
  git
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh

if [ -f /usr/bin/screenfetch ]; then screenfetch; fi
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh