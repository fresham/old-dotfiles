export PS1="\W \$ "
export CLICOLOR=1
export PATH=$HOME/.rbenv/bin:$PATH

eval "$(rbenv init -)"

BASE16_SHELL="$HOME/code/dotfiles/base16-builder/output/shell/base16-yesterdaynight.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL ]]
