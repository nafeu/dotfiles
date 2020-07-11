
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="geoffgarside"
plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

unset PYTHONPATH

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.rvm/bin"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH=$PATH:$HOME/Development/scripts/bin

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

alias dev="cd ~/Development"
alias github="cd ~/Development/github"
alias work="cd ~/Development/work-projects"
alias subldir="cd $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages"

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias ohmyzsh="subl ~/.oh-my-zsh"
alias zshconfig="subl ~/.zshrc"
alias zshreload="source ~/.zshrc"

alias pyserv="python -m SimpleHTTPServer 8000"
alias phpserv="php -S localhost:8000"
alias ns="npm start"
alias l="ls -l"
alias ll="ls -la"

alias doconnect="ssh root@138.197.133.29"
alias license="cp ~/Development/resources/LICENSE.txt ."
alias devserv="browser-sync start --server --files '**/*.html, **/*.js, **/*.css, **/*.memd'"
alias invoice="python3 ~/Development/github/invoice-gen/invoice-gen.py"

alias oavpb="processing-java --sketch=/Users/nafeu/Development/github/oavp/src --force --run; open /Users/nafeu/Development/github/oavp/src/processing-movie.mp4;"
alias oavpbs="processing-java --sketch=/Users/nafeu/Development/github/oavp/src --force --run; open /Users/nafeu/Development/github/oavp/src/processing-movie.mp4; subl /Users/nafeu/Development/github/oavp/;"
alias oavpv="open /Users/nafeu/Development/github/oavp/src/processing-movie.mp4;"

alias svmpac="osascript ~/Development/github/vmpac-r/setup.scpt"
alias soavp="osascript ~/Development/github/oavp/setup.scpt"
alias snafoodle="osascript ~/Development/github/nafoodle.io/setup.scpt"
alias scollegefalafel="osascript ~/Development/github/collegefalafel/setup.scpt"

alias argo="python ~/Development/github/activity-roulette/main.py"
alias arlog="cat ~/Development/github/activity-roulette/log.txt"
alias aredit="subl ~/Development/github/activity-roulette/activities.txt"
