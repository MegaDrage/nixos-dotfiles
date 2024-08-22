{ ... }:

{
  imports = [ ./zsh.nix ./eza.nix ./starship ./git.nix ./xdg.nix ./kitty ];
  home = {
    username = "megadrage";
    homeDirectory = "/home/megadrage";
    stateVersion = "24.05";
  };
}
