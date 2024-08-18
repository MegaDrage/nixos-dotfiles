{ ... }:

{
  imports = [
    ./zsh.nix
    ./starship
    ./git.nix
    ./xdg.nix
    ./kitty
    ./xplr.nix
  ];
  home = {
    username = "megadrage";
    homeDirectory = "/home/megadrage";
    stateVersion = "24.05";
  };
}
