# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/mkryvy/.oh-my-zsh"

ZSH_THEME="af-magic"

plugins=(colored-man-pages git zsh-autosuggestions ruby nmap pip sudo tmux vscode python man gitignore dotenv docker docker-compose ansible npm minikube microk8s kubectl httpie golang)

source $ZSH/oh-my-zsh.sh
eval "$(pyenv init --path)"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"




[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias)

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /Users/mkryvy/.docker/init-zsh.sh || true # Added by Docker Desktop
