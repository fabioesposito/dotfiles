#!/bin/bash

# requirements
# git curl wget fish

# nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# starship
curl -sS https://starship.rs/install.sh | sh
starship init fish | source

nix-env -iA nixpkgs.neovim \
    nixpkgs.go \
    nixpkgs.nodejs \
    nixpkgs.exa \
    nixpkgs.du-dust \
    nixpkgs.bottom \
    nixpkgs.ripgrep \
    nixpkgs.bat \
    nixpkgs.procs \
    nixpkgs.tealdeer \
    nixpkgs.awscli \
    nixpkgs.google-cloud-sdk \
    nixpkgs.kubectl \
    nixpkgs.helm


# for more pkgs visit https://search.nixos.org/packages


# set alias
alias gst="git status"
funcsave gst

alias gco="git checkout"
funcsave gco

alias gb="git branch"
funcsave gb

alias gl="git pull --rebase"
funcsave gl

alias vim="nvim"
funcsave vim

alias ls="exa"
funcsave ls

alias grep="rg"
funcsave grep

alias du="dust"
funcsave du

alias cat="bat"
funcsave cat