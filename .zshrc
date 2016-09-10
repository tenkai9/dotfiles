# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Autocompletion for aliases
setopt completealiases

# Ignore duplicates in history
setopt HIST_IGNORE_DUPS

# Reset termianl automatically after command completeion
ttyctl -f

# Make colored prompt
autoload -U promptinit
promptinit
prompt walters

# Add git status
source ~/.zsh-git-prompt/zshrc.sh

# 256 colors
#export TERM=xterm-256color
#export TERMINAL=xfce4-terminal # Terminal emulator

# Set prompt
PROMPT='$(git_super_status) >>%f '
RPROMPT='%F{green}%~%f'

# Aliases
alias ls='ls --color -h --group-directories-first'
alias l='ls -1shB'
alias la='l -A'
alias vimrc='vim ~/.vimrc'
alias zrc='vim ~/.zshrc'
alias i3rc='vim ~/.config/i3/config'
alias gss='git status -s'
alias gs='git status'
alias sup='sudo docker-compose up'
alias sop='sudo docker-compose stop'
alias sun='sudo docker-compose run'
alias sus='sudo docker-compose ps'
alias gb='git branch'
alias gbr='git branch -r'
alias gl='git log --pretty=oneline -n 10'

# Variables
EDITOR=vim

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$PATH:$HOME/.myscripts"
eval "$(rbenv init -)"

# Source nvm
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Keyboard layout switcher key
#setxkbmap "us,ru" ",winkeys" "grp:rctrl_toggle"

#AUTOENV_FILE_ENTER='.env.common'
source ~/.dotfiles/.zsh-extra/zsh-autoenv/autoenv.zsh
AUTOENV_HANDLE_LEAVE=1
