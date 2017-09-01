# Terminal settings
export CLICOLOR=1
export TERM=xterm-256color

# Language settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH=/Users/palas/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"
HIST_STAMPS="yyyy-mm-dd"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git colored-man colorize github virtualenv pip python brew osx zsh-syntax-highlighting node npm zsh-autosuggestions)

# User configuration
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export ANDROID_HOME=/Users/palas/Android/android-sdk-macosx
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export GROOVY_HOME=/usr/local/opt/groovy/libexec

PATH=/usr/local/bin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=$HOME/bin:$PATH
export PATH

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

alias zshconfig="$EDITOR ~/.zshrc"
alias envconfig="$EDITOR ~/Projects/config/env.sh"
alias vimconfig="$EDITOR ~/.vimrc"

function showFiles {
  defaults write com.apple.finder AppleShowAllFiles YES
  killall Finder /System/Library/CoreServices/Finder.app
  echo 'Show hidden files on'
}

function hideFiles {
  defaults write com.apple.finder AppleShowAllFiles NO
  killall Finder /System/Library/CoreServices/Finder.app
  echo 'Show hidden files off'
}

function mcd {
    mkdir $1 && cd $1
}

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

export VIRTUALENV_PYTHON=python

alias myf='ssh root@fitou.dmz -A -L 3307:localhost:3306 -L 3092:127.0.0.1:3092 -L 3093:127.0.0.1:3093'
alias fsf='sudo sshfs -o allow_other,defer_permissions,IdentityFile=/Users/palas/.ssh/id_rsa root@fitou.dmz:/ /mnt/fitou'
alias fuf='rm -rf /opt/mario/var/jsfs/sock; ssh root@fitou.dmz -A -L /opt/mario/var/jsfs/sock:localhost:4089'

export DEBEMAIL="jiri.palas@melown.com"
export DEBFULLNAME="Jiri Palas"
export PATH="/usr/local/mysql/bin/mysql:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source ~/.profile

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias cppath='pwd|pbcopy'
