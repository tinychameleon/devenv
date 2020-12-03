# Global Environment
export EDITOR=vim
export VISUAL=vim
export GPG_TTY=$(tty)

typeset -U path
path=(
	$HOME/go/bin
	/usr/local/opt/binutils/bin
	/usr/local/opt/coreutils/libexec/gnubin
	/usr/local/opt/curl/bin
	/usr/local/opt/findutils/libexec/gnubin
	/usr/local/opt/gnu-sed/libexec/gnubin
	/usr/local/opt/gnu-tar/libexec/gnubin
	/usr/local/opt/grep/libexec/gnubin
	/usr/local/opt/make/libexec/gnubin
	$path
)

typeset -U manpath
manpath=(
	/usr/local/opt/binutils/share/man
	/usr/local/opt/coreutils/libexec/gnuman
	/usr/local/opt/curl/share/man
	/usr/local/opt/findutils/libexec/gnuman
	/usr/local/opt/gawk/share/man
	/usr/local/opt/gnu-sed/libexec/gnuman
	/usr/local/opt/gnu-tar/libexec/gnuman
	/usr/local/opt/grep/libexec/gnuman
	/usr/local/opt/make/libexec/gnuman
	/usr/local/opt/tmux/share/man
	$manpath
)

# Homebrew
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSECURE_REDIRECT=1

# Load secrets
source $HOME/Documents/config/secrets.sh
