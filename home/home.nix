{ pkgs, ... }:

{
  imports = [
    ./fzf.nix
    ./sources
    ./zsh.nix
    ./eza.nix
    ./starship
    ./direnv.nix
    ./ranger.nix
    ./git.nix
    ./xdg.nix
    ./kitty
    ./lazygit
    ./bat.nix
    ./zoxide.nix
    ./hyprland
  ];
  home = {
    username = "megadrage";
    homeDirectory = "/home/megadrage";
    stateVersion = "24.05";
    packages = with pkgs; [ obsidian hyprshot okular vesktop ];
  };
}
