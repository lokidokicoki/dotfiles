# .bash_profile is sourced for a login shell.
# my .xsessionrc sources it, so place in here 'session' type configuration.
# 
# <http://lists.gnu.org/archive/html/bug-bash/2005-01/msg00263.html> is a good
# explanation of this insanity. Also <http://lkml.org/lkml/2005/4/25/205>.

export PATH=$PATH:$HOME/bin

test -f ~/.pythonrc && export PYTHONSTARTUP=$HOME/.pythonrc

case "$(uname -s)" in
CYGWIN_*)
	# Received wisdom from Cygwin's default .bashrc
	unset TMP
	unset TEMP
	;;
Darwin)
	export CLICOLOR=1
	;;
esac

case "${HOSTNAME%%.*}" in
BIC6591)
	export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
	;;
esac

# Source .bashrc if this is an interactive shell
case $- in
*i*)
	source ~/.bashrc
	;;
esac
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.node/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
