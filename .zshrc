source "$HOME/.zplug/init.zsh"

### ZPlug
#
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "agkozak/zsh-z"
zplug "plugins/safe-paste", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/nvm", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

export VISUAL=nvim
export VISUAL EDITOR=nvim
export PAGER=nvim
export EDITOR

### Aliases
#
alias refresh="source ~/.zshrc"
alias reload="source ~/.zshrc"

alias gpl="git pull"
alias gpsh="git push"
alias gcom="git commit -m"
alias ggbr="git add . && git commit -a -m "$(curl -s http://whatthecommit.com/index.txt)""

alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"
alias desktop="cd ~/Desktop"
alias idownloads="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads"
alias ibooks="cd ~/Library/Mobile\ Documents/iCloud~com~apple~iBooks/Documents/"
alias downloads="cd ~/Downloads"

alias ls="exa"
alias lss="exa -lbhs=modified"
alias lsa="exa -lbha"
alias lsx="exa -a"

alias clr="clear"
alias finder="ofd" 
alias vim="vim"
alias settings="nvim ~/.zshrc"
alias vimsettings="nvim ~/.vimrc"
alias nvimsettings="nvim ~/.config/nvim/init.vim"
alias npmlist="npm list -g --depth=0"
alias ]=". ranger"
alias reactapp="npx create-react-app"

alias d1='cd -'
alias d2='cd -2'
alias d3='cd -3'
alias d4='cd -4'
alias d5='cd -5'
alias d6='cd -6'
alias d7='cd -7'
alias d8='cd -8'
alias d9='cd -9'

### ZSH Options
#
setopt correct
setopt autocd
zstyle ':completion:*' menu select

bindkey "§" fzf-cd-widget
