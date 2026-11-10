fish_add_path -g $HOME/.cargo/bin
fish_add_path -g $HOME/.local/bin

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx MANPAGER "nvim +Man!"
if type -q bat
    alias cat="bat"
    set -gx PAGER "bat --plain"
else
    set -gx PAGER less
end
set -g fish_greeting ""

if type -q starship
    starship init fish | source
end

if type -q zoxide
    zoxide init fish --cmd cd | source
end

if type -q eza
    alias ls="eza --icons=\"auto\""
    alias ll="eza -l --icons=\"auto\" --git"
    alias la="eza -a --icons=\"auto\""
    alias lla="eza -la --icons=\"auto\" --git"
    alias lt="eza --tree --icons=\"auto\""
end

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -I --preserve-root"
alias snvim="sudo -E nvim"
