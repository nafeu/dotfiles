
# Path to your oh-my-zsh installation.
export ZSH=/Users/nafeu/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
POWERLEVEL9K_MODE='awesome-patched'
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_SHORTEN_DIR_LENGTH=0
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_FOREGROUND="249"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="249"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="249"
POWERLEVEL9K_STATUS_OK_BACKGROUND="black"
POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="black"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="249"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="249"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="249"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_RAM_BACKGROUND="black"
POWERLEVEL9K_RAM_FOREGROUND="249"
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="249"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S} \UE12E"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('status' 'dir' 'vcs')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('load' 'ram_joined' 'time')

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# path exports
export PATH=${PATH}:~/Development/resources/android-sdk-macosx/platform-tools:~/Development/resources/android-sdk-macosx/tools
export ANDROID_HOME=~/Development/resources/android-sdk-macosx
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH=$PATH:/Users/nafeu/Development/scripts/bin

# bluemix cli
source /usr/local/Bluemix/bx/zsh_autocomplete

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# folder aliases
alias dev="cd ~/Development"
alias github="cd ~/Development/github"
alias work="cd ~/Development/work-projects"
alias subldir="cd /Users/nafeu/Library/Application\ Support/Sublime\ Text\ 3/Packages"

# osx aliases
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# file aliases
alias ohmyzsh="subl ~/.oh-my-zsh"
alias zshconfig="subl ~/.zshrc"
alias gethints="cat ~/Documents/Safe/hints.txt"

# dev
alias pyserv="python -m SimpleHTTPServer 8000"
alias phpserv="php -S localhost:8000"
alias zshreload="source ~/.zshrc"
alias vpman="venv/bin/python manage.py"
alias ns="npm start"
alias l="ls -l"
alias ll="ls -la"
alias rpiconnect="ssh pi@192.168.1.19"
alias license="cp ~/Development/resources/LICENSE.txt ."
alias mrsubs="curl http://phrakture.com/apps/mrsubmission/data/questions.json | jsonpp"
alias gryt="node /Users/nafeu/Development/github/gryt-focus/remote.js"
alias grint="node /Users/nafeu/Development/github/gryt-focus/remote.js interrupt"

# work aliases
source /Users/nafeu/.workrc
