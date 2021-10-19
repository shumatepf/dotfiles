export ZSH="/home/peter/.oh-my-zsh"
export PATH=$PATH:/bin:/usr/bin
export PATH=$PATH:/home/peter/brightlight/
export PATH=$PATH:/home/peter/brightup/

export _JAVA_AWT_WM_NONREPARENTING=1

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias zshrc="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimrc="vim ~/.vimrc"
alias vimplugin="vim +PluginInstall +qall"
alias cpypwd="pwd | xclip -selection c"
alias python="python3.7"
alias cl="clear"
alias weather="curl wttr.in"
alias cat="bat"
