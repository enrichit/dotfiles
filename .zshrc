# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

# Example aliases
alias :q="exit"
alias :e="vim"
alias vi="vim"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias tmux="tmux -2"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get update && sudo apt-get upgrade"
alias exip="wget -qO- www.icanhazip.com"
alias less="view -"
alias bower="noglob bower"
alias artisan="php artisan"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'SSH Key copied to clipboard.'"
alias please="sudo !!"

# Secret aliases
source ~/.shhhhh.sh

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textvim ruby lighthouse)
plugins=(git git-flow svn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# This loads NVM
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh

# select ruby on login
if type rvm > /dev/null; then
	rvm use ruby-head
fi

# select node on login
if type nvm > /dev/null; then
	nvm use 0.10
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
