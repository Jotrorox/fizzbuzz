{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell
{
  nativeBuildInputs = with pkgs; [
    ## -- Programming languages -- ##
    # Bash tools
    bash
    shellcheck

    # C/C++ tools
    clang
    gcc
    gnumake

    # Elixir tools
    elixir 
    elixir-ls

    # Go tools
    go
    gopls

    # Haskell tools
    ghc
    haskellPackages.lsp

    # Java tools
    temurin-bin-21

    # Lua
    lua
    lua-language-server

    # Node tools
    nodejs_22

    # Perl tools
    perl

    # Python tools
    python3
    pylyzer

    # Ruby tools
    ruby

    # Rust tools
    cargo
    rustc
    rust-analyzer
    rustfmt

    ## -- Programming languages -- ##

    # Other tools
    git
  ];



  shellHook = '''';
}