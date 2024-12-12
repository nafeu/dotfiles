export ZSH="/Users/nafeu/.oh-my-zsh"

ZSH_THEME="edvardm"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias ohmyzsh="subl ~/.oh-my-zsh"
alias zshconfig="subl ~/.zshrc"
alias zshreload="source ~/.zshrc"

alias l="ls -lh"
alias ll="ls -lah"

alias dev="cd ~/Development"
alias github="cd ~/Development/github"
alias subldir="cd ~/Library/Application\ Support/Sublime\ Text/Packages/User"

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias pyserv="python -m SimpleHTTPServer 8000"
alias phpserv="php -S localhost:8000"
alias devserv="browser-sync start --server --files '**/*.html, **/*.js, **/*.css, **/*.txt, **/*.json'"

alias notes="subl ~/Development/notes"

alias mct="open http://localhost:8000 && cd ~/Development/github/markdown-content-tools/ && node dist/index.js"

alias mongod='brew services run mongodb-community'
alias mongod-status='brew services list'
alias mongod-stop='brew services stop mongodb-community'

alias mockapi="cd $MOCK_API_PATH && npm start; subl $MOCK_API_PATH/index.js; echo 'http://localhost:8378' | pbcopy;"

# alias openmodified="$EDITOR `echo $(git diff --name-only HEAD~ HEAD) $(git status --porcelain | awk '{print $2}')`"

alias wtfinstash="git stash show -p"
alias dropstash="git stash drop"

alias gobackone='git reset HEAD~'

alias openchanged='sh ~/Development/github/dotfiles/scripts/openchanged.sh'
alias whatchanged='sh ~/Development/github/dotfiles/scripts/whatchanged.sh'
alias openmodified='git diff --name-only | xargs $EDITOR'
alias thispr='gh pr view --web'
alias nvm='fnm'

alias dotfiles='subl ~/Development/github/dotfiles';

alias whatnode='echo v15.6.0'

alias oavpe='processing-java --sketch=/Users/nafeu/Development/github/oavp/src --run'
alias oavpc='cd ~/Development/github/oavp/tools/commander && npm start'
alias oavpcd='cd ~/Development/github/oavp/tools/commander && npm run dev'
alias oavprmf='rm -r /Users/nafeu/Development/github/oavp/package-export-files/*'
alias oavprs='echo "void setupSketch() {}\nvoid setupSketchPostEditor() {}\nvoid updateSketch() {}\nvoid drawSketch() {}" > ~/Development/github/oavp/src/sketch.pde'

alias devkiosk='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --new-window --app=http://localhost:3001/'

alias cycler='cd ~/Development/github/cycler && npm run dev'

alias tzm='node ~/Development/github/dotfiles/scripts/timezone-message.js'

alias invt="cd ~/Development/github/invoice-gen && python3 invoice-gen.py 1"
alias invoices="cd /Users/nafeu/Google\ Drive/My\ Drive/Accounting/Invoicing"

alias musicnotes="subl ~/Production/project.todo"

alias calen="open https://calendar.google.com/calendar/u/0/r"

alias rstp="cp ~/Library/Application\ Support/Sublime\ Text/Packages/User/sublime-plugins/*.py ~/Library/Application\ Support/Sublime\ Text/Packages/User/"

alias mjsih='sh ~/Development/github/dotfiles/scripts/js-index-helpers-mjs-init.sh'

alias bmn="ffplay rtsp://.../10.0.0.169/stream2"
alias bmlr="ffplay rtsp://.../10.0.0.11/stream2"
alias bmbd="ffplay rtsp://.../10.0.0.19/stream2"
alias bmnhq="ffplay rtsp://.../10.0.0.169/stream1"
alias bmlrhq="ffplay rtsp://.../10.0.0.11/stream1"
alias bmbdhq="ffplay rtsp://.../10.0.0.19/stream1"

alias aic="cd ~/Development/ai && node prompt.mjs --model codellama"
alias aig="cd ~/Development/ai && node prompt.mjs --model llama2"
alias qqc="ollama run codellama"
alias qqg="ollama run llama2"

alias bluecross="open https://members.medaviebc.ca/en/login?brand=mbc"

alias tiluoe="open https://github.com/nafeu/tiluo/blob/main/data.js"
alias tiluo="open https://nafeu.com/tiluo"

alias pva="source venv/bin/activate"
alias pvd="deactivate"

alias subldiff="git diff | subl -"

alias esf="sh ~/Development/github/dotfiles/scripts/eslint-fix-changed.sh"

eval "$(fnm env --use-on-cd)"

# bun completions
[ -s "/Users/nafeu/.bun/_bun" ] && source "/Users/nafeu/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# python
export PATH="/opt/homebrew/opt/python@3.10/libexec/bin:$PATH"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export PATH="$(brew --prefix bison@2.7)/bin:$PATH"

export PATH="$PATH:/Users/nafeu/Development/flutter/bin"

# export RUBY_CFLAGS=-DUSE_FFI_CLOSURE_ALLOC
# export optflags="-Wno-error=implicit-function-declaration"
# export GEM_HOME="$HOME/.gem"

export EDITOR="subl"

# echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

. /opt/homebrew/opt/asdf/libexec/asdf.sh

alias kctx="kubectl config use-context"

eval "$(op completion zsh)"; compdef _op op

alias vp="cd ~/Production/Video\ Projects/Raw\ Dump"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
