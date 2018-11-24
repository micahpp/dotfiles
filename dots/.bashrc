
export DOTFILES=$HOME/code/dotfiles
source $DOTFILES/dots/.exports

# color definitions
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

copyfp() {
        realpath $1 | tr -d '\n' | pbcopy
}

cleanup() {
    find $HOME -name '.DS_Store' -print -delete
}

export EDITOR=vim
export CODEPATH=$HOME/code
export PATH=$PATH:$BASH_SCRIPT_PATH
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin
export HISTCONTROL=ignoreboth:erasedupes    # ignore dupe lines in bash history

# git stuff
source ~/code/dotfiles/git-completion.bash	# enable git tab completion
source ~/code/dotfiles/git-prompt.sh	# use custom git prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="$purple\u$green\$(__git_ps1)$blue \W 🌵  $reset"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


# aliases
alias rebash="source ~/.bash_profile"
alias rb="rebash"

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias dots="cd  $DOTFILES"
alias ranger='ranger --choosedir=$TMPDIR/.rangerdir; LASTDIR=`cat $TMPDIR/.rangerdir`; cd "$LASTDIR"'   # exit ranger at crrent dir

# ls
alias ls="ls -lGh"
alias lsa="ls -A"           # include hidden files except self & parent

# monitoring
alias hogscpu="ps -acrx -o pid,%cpu,command | awk 'NR<=5'"
alias hogsmem="ps -acrx -o pid,%mem,command | awk 'NR<=5'"
alias hogs="hogscpu; echo; hogsmem"

# misc
alias du="du -sh"
alias fp="realpath"			# asb path of filepath arg
alias about="neofetch"
alias speedtest="speedtest-cli --simple"

# use work profile if it exists
if [ -f $WORK_PROFILE ]; then
        source $WORK_PROFILE
fi
