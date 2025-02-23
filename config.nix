{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "spartha-tools";
      paths = [
        luarocks
        zsh-completions
        neovim
        go
        python
        nodejs_22
        pure-prompt
        fd
        ripgrep
        fzf
        lazygit
      ];
    };
  };
}
