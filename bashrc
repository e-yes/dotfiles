export LANG="ru_RU.UTF-8"

[[ -f /etc/profile.d/bash-completion.sh ]] && \
	source /etc/profile.d/bash-completion.sh

# Shell prompt
export PS1="\n\[\e[0;36m\]┌─[\[\e[0m\]\[\e[1;33m\]\u\[\e[0m\]\[\e[1;36m\] @ \[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[0;36m\]]─[\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\[\e[0;36m\]]\[\e[0;36m\]─[\[\e[0m\]\[\e[0;31m\]\t\[\e[0m\]\[\e[0;36m\]]\[\e[0m\]\n\[\e[0;36m\]└─[\[\e[0m\]\[\e[1;37m\]\$\[\e[0m\]\[\e[0;36m\]]› \[\e[0m\]"

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
export PATH=$PATH:/sbin:/usr/sbin:/home/e-yes/bin
export GTK2_RC_FILES="/home/e-yes/.gtkrc-2.0"
#export ANDROID_JAVA_HOME=/opt/sun-jdk-1.6.0.45

XDG_CONFIG_HOME="$HOME/.config"

# Bazel
#source /home/e-yes/.bazel/bin/bazel-complete.bash

# Google Cloud SDK
#source ~/projects/google-cloud-sdk/path.bash.inc
#source ~/projects/google-cloud-sdk/completion.bash.inc

export GIT_EDITOR=vim