#!/bin/bash
set -eu

TAPS=(
	homebrew/cask-fonts
)

PACKAGES=(
	aspell
	bash
	binutils
	coreutils
	curl
	findutils
	firefox
	font-fira-mono
	font-go
	gawk
	git
	gnu-sed
	gnu-tar
	gnupg
	google-chrome
	grep
	iterm2
	jq
	make
	mercurial
	microsoft-edge
	pinentry-mac
	tmux
	vim
	zsh
)

function has_binary() {
	command -v "$1" >/dev/null
}

BREW=/usr/local/bin/brew
SHELL_PATH=/usr/local/bin/zsh

has_binary $BREW || \
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

$BREW tap "${TAPS[@]}"
set +e; $BREW install "${PACKAGES[@]}"; set -e

echo "$SHELL_PATH" | sudo tee -a /etc/shells && sudo -k
chsh -s "$SHELL_PATH"

(
	cd $(dirname ${BASH_SOURCE[0]})
	git submodule update --init
)

./link_dotfiles.sh
