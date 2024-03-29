export LANG="en_US.UTF-8"

export PATH=$PATH:/sbin:/usr/sbin:$HOME/.local/bin:$HOME/go/bin:$HOME/projects/flutter/sdk/bin
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64"


[[ -f /etc/profile.d/bash-completion.sh ]] && \
	source /etc/profile.d/bash-completion.sh

# Shell prompt
export PS1="\n\[\e[0;36m\]┌─[\[\e[0m\]\[\e[1;33m\]\u\[\e[0m\]\[\e[1;36m\] @ \[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[0;36m\]]─[\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\[\e[0;36m\]]\[\e[0;36m\]─[\[\e[0m\]\[\e[0;31m\]\t\[\e[0m\]\[\e[0;36m\]]\[\e[0m\]\n\[\e[0;36m\]└─[\[\e[0m\]\[\e[1;37m\]\$\[\e[0m\]\[\e[0;36m\]]› \[\e[0m\]"

# git-prompt source:
# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
[[ -f $HOME/.local/bin/git-prompt.sh ]] && source $HOME/.local/bin/git-prompt.sh && \
    export GIT_PS1_SHOWCOLORHINTS=1 && \
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=1 && \
    export GIT_PS1_SHOWUPSTREAM="auto verbose name" && \
PROMPT_COMMAND='__git_ps1 "\n\[\e[0;36m\]┌─[\[\e[0m\]\[\e[1;33m\]\u\[\e[0m\]\[\e[1;36m\] @ \[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[0;36m\]]─[\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\[\e[0;36m\]]\[\e[0;36m\]─[\[\e[0m\]\[\e[0;31m\]\t\[\e[0m\]\[\e[0;36m\]]\[\e[0m\]\n\[\e[0;36m\]└─[\[\e[0m\]\[\e[1;37m\]\$\[\e[0m\]" "\[\e[0;36m\]]› \[\e[0m\]"'

if [ -f /usr/libexec/mc/mc.sh ]; then
    source /usr/libexec/mc/mc.sh
fi

# bash history tuning
# https://www.shellhacks.com/tune-command-line-history-bash/
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=10000
export HISTCONTROL="ignorespace:erasedups"
export HISTIGNORE="ls:ps:history"
shopt -s histappend
shopt -s cmdhist

# Aliases
alias la='ls -la'
alias ll='ls -sl'
alias ec='emacsclient -n'
alias qu='qpdfview --unique'
alias logcat='adb logcat -v threadtime | tee `date +%F-%H%M%S.log`'
alias apktool="java -jar ${HOME}/.local/bin/apktool.jar"

# Functions
mkcdir()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}

# CLI Colors
export CLICOLOR=1
# Set "ls" colors
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Misc
XDG_CONFIG_HOME="$HOME/.config"

export GIT_EDITOR=vim
