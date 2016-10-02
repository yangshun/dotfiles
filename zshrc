alias p='python -m SimpleHTTPServer'

# Golang stuff
alias gr='go run main.go'
alias gt='go test ./...'
alias gg='go generate ./...'
alias gf='gofmt -w *'

# Node stuff
alias ni='npm install'
alias ns='npm start'
alias nt='npm test'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Calling `nvm use` automatically in a directory with a .nvmrc file
# Place this after nvm initialization!
# https://github.com/creationix/nvm#zsh
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
