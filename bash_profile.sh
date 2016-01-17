export PS1="\W \$ "
export CLICOLOR=1
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

eval "$(rbenv init -)"

BASE16_SHELL="$HOME/code/dotfiles/base16-builder/output/shell/base16-yesterdaynight.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL ]]
