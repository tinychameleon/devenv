#!/bin/bash
set -eu

TAPS=(
	homebrew/cask-fonts
)

PACKAGES=(
	aspell
	bash
	bash-completion
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
	jq
	make
	mercurial
	microsoft-edge
	pinentry-mac
	tmux
	vim
)

function has_binary() {
	command -v "$1" >/dev/null
}

BREW=/usr/local/bin/brew
SHELL_PATH=/usr/local/bin/bash

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
