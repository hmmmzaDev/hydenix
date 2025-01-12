{ pkgs, userConfig, ... }:
{

  imports = [
    (import ./git.nix { inherit pkgs userConfig; })
    ./zsh.nix
    (import ./vscode.nix { inherit pkgs userConfig; })
  ];

  programs = {
    home-manager.enable = true;
    neovim = {
      enable = true;
      defaultEditor = true;
    };
    zsh.enable = true;
    nix-index.enable = true;
    
    nix-ld.enable = true;
    nix-ld.libraries = [];
  };
}
