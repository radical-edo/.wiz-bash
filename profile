if [ "$TERM" = xterm -a "$COLORTERM" = "gnome-terminal" ]; then
    TERM=xterm-256color
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/themes/sexy_solarized
source $DIR/functions/rspec


NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.rbenv/bin:$NVM_DIR:$PATH"
eval "$(rbenv init -)"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion


if [ -f ~/.wiz-bash/functions/git-completion.bash ]; then
  . ~/.wiz-bash/functions/git-completion.bash
fi

alias vim='mvim -v'
export EDITOR=vim

alias ll='ls -l'
alias la='ls -la'
alias erudion_chat='RAILS_ENV=development bundle exec rackup private_pub.ru -s thin -E production'

alias be='bundle exec'

alias dserv='./bin/devserver'
alias coco='./bin/mocha'
