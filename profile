if [ "$TERM" = xterm -a "$COLORTERM" = "gnome-terminal" ]; then
    TERM=gnome-256color
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/themes/sexy_solarized
source $DIR/functions/rspec

if [ -f ~/.wiz-bash/functions/git-completion.bash ]; then
  . ~/.wiz-bash/functions/git-completion.bash
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

alias ll='ls -l'
alias la='ls -la'
alias erudion_chat='RAILS_ENV=development bundle exec rackup private_pub.ru -s thin -E production'

alias logs='git log'
alias stats='git status'
alias commit='git commit -am'
alias push='git push'

alias be='bundle exec'

alias scan_files='grep -Hre'

