# .bashrc is sourced for an interactive shell.

#echo .bashrc

# For some reason, openssh invokes bash as an interactive shell even if we
# are only using scp. Therefore check that we have a terminal before processing
# this file
if test -n "$SSH_CONNECTION"; then
    tty -s || return
fi

# disable XON/XOFF so that we can use readline's forward-search-history command
# by pressing C-s
command -v stty &>/dev/null && stty ixon

shopt -s cdspell
#shopt -s failglob
shopt -s histverify
shopt -s no_empty_cmd_completion

export GREP_OPTIONS='--color=auto'

export EDITOR=vim

if test -n "$DISPLAY"
then
	BROWSER=gnome-open
else
	BROWSER=w3m
fi
export BROWSER

export PAGER=less
#export LESS='-icRFS'
command -v lesspipe &>/dev/null && eval "$(lesspipe)"
# see termcap(5) for an explanation of these codes
#export LESS_TERMCAP_mb='\033[01;31m' # start blink
export LESS_TERMCAP_md=$'\E[0;31m' # start bold
export LESS_TERMCAP_me=$'\E[0m' # back to normal
export LESS_TERMCAP_so=$'\E[0;44;33m' # start standout (status line)
export LESS_TERMCAP_se=$'\E[0m' # end standout
export LESS_TERMCAP_us=$'\E[0;32m' # start underline
export LESS_TERMCAP_ue=$'\E[0m' # end underline

command -v dircolors >/dev/null && eval "$(dircolors -b)"

if test -f /etc/bash_completion.d/git; then
	source /etc/bash_completion.d/git
elif test -f /opt/local/share/doc/git-core/contrib/completion/git-completion.bash; then
	source /opt/local/share/doc/git-core/contrib/completion/git-completion.bash
elif test -f /usr/local/git/contrib/completion/git-completion.bash; then
	# Darwin only?
	source /usr/local/git/contrib/completion/git-completion.bash
	source /usr/local/git/contrib/completion/git-prompt.sh
fi

# best prompt ever!
#
function smile {
	if test $? = 0; then
		printf "${csi_green}:)"
	else
		printf "${csi_red}:("
	fi
}
function user_colour {
	if test "$UID" = 0; then
		printf "${csi_red}"
	else
		printf "${csi_green}"
	fi
}

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

csi='\033['
csi_default=${csi}0m
csi_cyan=${csi}36m
csi_green=${csi}32m
csi_red=${csi}31m
csi_gold=${csi}33m
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM=verbose
PS1="\n\$(smile) ${csi_cyan}\A $(user_colour)\u@\h ${csi_gold}\w${csi_default} \$(type -t __git_ps1 >/dev/null && __git_ps1 '(%s)')\n\\$ "

HISTCONTROL=ignoreboth
HISTSIZE=5000

# xterm/screen title
#
case "$TERM" in
xterm*|rxvt*|screen)
	# http://www.faqs.org/docs/Linux-mini/Xterm-Title.html#ss3.1
	PROMPT_COMMAND='printf "\033]0;${HOSTNAME%%.*}:${PWD/#$HOME/~}\a"'
	;;
esac

function gvimcpp {
	gvim $1.cpp "+new $1.h"
}

#function remotesign {
#	set -e
#
#	host="$1"
#
#	while shift; do
#		test -n "$1" || continue
#
#		data=$(ssh "$host" cat "$file")
#		sign=$(gpg --armor --detach-sign <<< "$data")
#		ssh "$host" cat '>' "$file.asc"
#	done
#}

function envof {
	file=/proc/${1:?Usage: $0 pid}/environ
	cmd="cat $file"
	test -r $file || cmd="sudo $cmd"
	$cmd | tr '\0' '\n' | cat -v
}

function physize {
	echo $(( $(stat -c '%B * %b' "$1") / 1024 )) "$1"
}

function block {
	sudo iptables -I OUTPUT -d "$1" -j DROP
}

function batchfg {
	foo="$(awk '{print $1}' /proc/loadavg) < 1.5"
	while test "$(bc <<< "$foo")" = '0'; do
		foo="$(awk '{print $1}' /proc/loadavg) < 1.5"
		sleep 5
	done
	"$@"
}

#function info {
#	gnome-open "http://localhost/cgi-bin/info2www?($1)$2"
#}

#test -r /etc/bash_completion && source /etc/bash_completion

case $- in
*i*)
	source ~/.bash_aliases
	;;
esac

command -v gvfs-open &>/dev/null && alias open=gvfs-open

if test -z "$CLICOLOR"; then
	alias cgrep='grep --color --context=9999999'
	alias ls='ls --color=auto'
fi

fortune
