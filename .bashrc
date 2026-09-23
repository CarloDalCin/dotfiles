# Add custom interactive shell functions or exports here


# Commands that should be applied only for interactive shells.
[[ $- == *i* ]] || return

HISTFILESIZE=100000
HISTSIZE=10000

shopt -s histappend
shopt -s extglob
shopt -s globstar
shopt -s checkjobs

alias -- cp='cp -i'
alias -- gd='git diff'
alias -- gl='git pull'
alias -- gp='git push'
alias -- gs='git status'
alias -- hm-switch='home-manager switch --flake ~/dotfiles#carlo@desktop'
alias -- l='ls -CF'
alias -- la='ls -A'
alias -- ll='ls -lah --color=auto'
alias -- mv='mv -i'
alias -- nix-clean='sudo nix-collect-garbage -d && nix-collect-garbage -d'
alias -- nix-switch-desktop='sudo nixos-rebuild switch --flake ~/dotfiles#desktop'
alias -- nix-switch-laptop='sudo nixos-rebuild switch --flake ~/dotfiles#laptop'
alias -- nix-test-desktop='sudo nixos-rebuild test --flake ~/dotfiles#desktop'
alias -- nix-update='nix flake update ~/dotfiles'
alias -- rm='rm -I'

if [[ ! -v BASH_COMPLETION_VERSINFO ]]; then
  . "/nix/store/p3k8rvhgb5w21g0majimz2jnd11xb0fx-bash-completion-2.18.0/etc/profile.d/bash_completion.sh"
fi

if [[ -r "${GHOSTTY_RESOURCES_DIR}/shell-integration/bash/ghostty.bash" ]]; then
  builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/bash/ghostty.bash"
fi

if [[ :$SHELLOPTS: =~ :(vi|emacs): ]]; then
  eval "$(/nix/store/nvw3nii5qk8c217936k0a974lvc512ga-fzf-0.74.4/bin/fzf --bash)"
fi

if [[ $TERM != "dumb" ]]; then
  eval "$(/nix/store/idhgbr9k9ypxzfzchar1hkl5kjd0khli-starship-1.26.0/bin/starship init bash --print-full-init)"
fi

