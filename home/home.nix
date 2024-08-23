{ pkgs, ... }:

{
  imports = [
    ./zsh.nix
    ./eza.nix
    ./starship
    ./ranger.nix
    ./git.nix
    ./xdg.nix
    ./kitty
    ./lazygit
    ./bat.nix
  ];
  home = {
    username = "megadrage";
    homeDirectory = "/home/megadrage";
    stateVersion = "24.05";
    packages = with pkgs; [ obsidian ];
  };
}
