export LANG="ru_RU.UTF-8"

[[ -f /etc/profile.d/bash-completion.sh ]] && \
	source /etc/profile.d/bash-completion.sh

# Shell prompt
export PS1="\n\[\e[0;36m\]┌─[\[\e[0m\]\[\e[1;33m\]\u\[\e[0m\]\[\e[1;36m\] @ \[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[0;36m\]]─[\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\[\e[0;36m\]]\[\e[0;36m\]─[\[\e[0m\]\[\e[0;31m\]\t\[\e[0m\]\[\e[0;36m\]]\[\e[0m\]\n\[\e[0;36m\]└─[\[\e[0m\]\[\e[1;37m\]\$\[\e[0m\]\[\e[0;36m\]]› \[\e[0m\]"

# git-prompt WTF
# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
[[ -f $HOME/bin/git-prompt.sh ]] && source $HOME/bin/git-prompt.sh && \
    export GIT_PS1_SHOWCOLORHINTS=1 && \
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=1 && \
    export GIT_PS1_SHOWUPSTREAM="auto verbose name" && \
PROMPT_COMMAND='__git_ps1 "\n\[\e[0;36m\]┌─[\[\e[0m\]\[\e[1;33m\]\u\[\e[0m\]\[\e[1;36m\] @ \[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[0;36m\]]─[\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\[\e[0;36m\]]\[\e[0;36m\]─[\[\e[0m\]\[\e[0;31m\]\t\[\e[0m\]\[\e[0;36m\]]\[\e[0m\]\n\[\e[0;36m\]└─[\[\e[0m\]\[\e[1;37m\]\$\[\e[0m\]" "\[\e[0;36m\]]› \[\e[0m\]"'

# Midnight Commander chdir enhancement
if [ -f /usr/share/mc/mc.gentoo ]; then
	. /usr/share/mc/mc.gentoo
fi

# Aliases
alias la='ls -la'
alias ll='ls -sl'
alias ec='emacsclient -n'
alias qu='qpdfview --unique'
alias logcat='adb logcat -v threadtime | tee `date +%F-%H%M%S.log`'

# CLI Colors
export CLICOLOR=1
# Set "ls" colors
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Misc
export DJANGO_SETTINGS_MODULE=settings
export PATH=$PATH:/sbin:/usr/sbin:$HOME/bin:$HOME/go/bin
export GTK2_RC_FILES="/home/e-yes/.gtkrc-2.0"
#export ANDROID_JAVA_HOME=/opt/sun-jdk-1.6.0.45

XDG_CONFIG_HOME="$HOME/.config"

export GIT_EDITOR=vim

if [ -f ~/.sdb/.sdb-completion.bash ]; then
 source ~/.sdb/.sdb-completion.bash
fi
