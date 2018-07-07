
# color definitions
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# copy abs path of $1 to clipboard
clipfp () {
        realpath $1 | tr -d '\n' | pbcopy
}

export EDITOR=vim
export CODEPATH=$HOME/code
export PATH=$PATH:$BASH_SCRIPT_PATH
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin


# git stuff
source ~/code/dotfiles/git-completion.bash	# enable git tab completion
source ~/code/dotfiles/git-prompt.sh	# use custom git prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


# aliases
alias rebash="source ~/.bash_profile"
alias ..="cd .."
alias ...="cd ../.."
alias ls="ls -lGh"
alias lsa="ls -a"           # include hidden files
alias du="du -sh"
alias abspath="realpath"
alias fp="realpath"			# asb path of filepath arg
alias tidyup="find . -name '.DS_Store' -print -delete"
# exit ranger at current dir
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
