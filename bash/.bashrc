# Commands that should be applied only for interactive shells.
[[ $- == *i* ]] || return

# Add custom interactive shell functions or exports here


HISTCONTROL=ignoreboth
HISTFILESIZE=20000
HISTSIZE=10000
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export EDITOR=nvim
export VISUAL=nvim
export MANPAGER="nvim +Man!"

export PATH="$HOME/.local/bin/:$PATH"

shopt -s histappend
shopt -s extglob
shopt -s globstar
shopt -s checkjobs

alias -- cp='cp -i'
alias -- mv='mv -i'
alias -- rm='rm -I --preserve-root'
alias -- ..='cd ..'
alias -- ...='cd ../..'
alias -- grep='grep --color=auto'
alias -- ls='ls -h --color=auto --group-directories-first'
alias -- l='ls -CF'
alias -- la='ls -A'
alias -- ll='ls -l'
alias -- tree='tree -C -F --dirsfirst --filelimit=40 --gitignore --opt-toggle'
alias -- snvim='sudo -E nvim'


if [[ ! -v BASH_COMPLETION_VERSINFO ]]; then
  . "/usr/share/bash-completion/bash_completion"
fi

if [[ -r "${GHOSTTY_RESOURCES_DIR}/shell-integration/bash/ghostty.bash" ]]; then
  builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/bash/ghostty.bash"
fi

if command -v fzf &>/dev/null; then
  eval "$(fzf --bash)"
fi

if [[ $TERM != "dumb" ]]; then
  eval "$(starship init bash)"
fi



# Added by Antigravity CLI installer
export PATH="/home/carlo/.local/bin:$PATH"
