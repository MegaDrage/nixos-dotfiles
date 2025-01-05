{ pkgs, inputs, ... }:

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
    ./gtk.nix
    ./qt.nix
  ];

  home = {
    username = "megadrage";
    homeDirectory = "/home/megadrage";
    stateVersion = "24.05";
    packages = with pkgs; [
      mission-center
      cloudflare-warp
      zathura
      foot
      qbittorrent
      warp-terminal
      hiddify-app
      pavucontrol
      remmina
      rocketchat-desktop
      vivaldi
      obsidian
      hyprshot
      okular
      vesktop
    ];
  };
}
