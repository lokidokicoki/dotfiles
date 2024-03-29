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
rator)
	#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
	echo 'Hello raptor'
	;;
esac

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# Source .bashrc if this is an interactive shell
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

case $- in
*i*)
	source ~/.bashrc
	;;
esac
