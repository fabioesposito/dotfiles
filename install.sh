#!/bin/bash

# requirements
# git curl fish

# nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# core dev tools
nix-env -iA nixpkgs.neovim \
    nixpkgs.tree-sitter \
    nixpkgs.starship \
    nixpkgs.tmux \
    nixpkgs.htop \
    nixpkgs.tig \
    nixpkgs.neofetch \
    nixpkgs.stow \
    nixpkgs.exa \
    nixpkgs.du-dust \
    nixpkgs.bottom \
    nixpkgs.ripgrep \
    nixpkgs.bat \
    nixpkgs.procs \
    nixpkgs.tealdeer 

# languages
nix-env -iA nixpkgs.go \
    nixpkgs.zig \
    nixpkgs.nodejs \
    nixpkgs.deno
    
# k8s
nix-env -iA nixpkgs.awscli \
    nixpkgs.google-cloud-sdk \
    nixpkgs.kubectl \
    nixpkgs.kubectx \
    nixpkgs.k9s \
    nixpkgs.helm

# for more pkgs visit https://search.nixos.org/packages

# TODO 
# create a .ssh/config and stow

echo "done!"
