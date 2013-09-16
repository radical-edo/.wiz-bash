if [ "$TERM" = xterm -a "$COLORTERM" = "gnome-terminal" ]; then
    TERM=gnome-256color
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/themes/sexy_solarized
source $DIR/functions/rspec

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

alias ll='ls -l'
alias la='ls -la'
alias erudion_chat='RAILS_ENV=development bundle exec rackup private_pub.ru -s thin -E production'

