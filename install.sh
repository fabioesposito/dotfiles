#!/bin/bash

# requirements
# git curl fish

# nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# core dev tools
nix-env -iA nixpkgs.neovim \
    nixpkgs.starship
    nixpkgs.exa \
    nixpkgs.du-dust \
    nixpkgs.bottom \
    nixpkgs.ripgrep \
    nixpkgs.bat \
    nixpkgs.procs \
    nixpkgs.tealdeer 

# languages
nix-env -iA nixpkgs.go \
    nixpkgs.nodejs \
    nixpkgs.deno
    
# k8s
nix-env -iA nixpkgs.awscli \
    nixpkgs.google-cloud-sdk \
    nixpkgs.kubectl \
    nixpkgs.helm

# for more pkgs visit https://search.nixos.org/packages

# add to path
fish_add_path ~/.yarn/bin

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

echo "done!"
