# Aliases
alias e=$EDITOR
alias ls='ls --color -AFh'

# Prompt
PROMPT='%F{green}%(4~.%-1~/…/%2~.%~)%f› '
RPROMPT='%(?..%(146?..❗️%F{red}%?%f))%(1j. 🔧%F{yellow}%j%f.)'

# Configuration Variables
HISTFILE=~/.zsh/histfile
HISTSIZE=10000
SAVEHIST=10000

# Configuration Options
setopt autocd
unsetopt beep

setopt share_history

# Configuration Commands
bindkey -v

zstyle :compinstall filename '/Users/srt/.zshrc'

autoload -Uz compinit; compinit
