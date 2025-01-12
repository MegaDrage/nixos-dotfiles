{ pkgs, ... }:

{
  imports = [
    ./fastfetch.nix
    ./tmux.nix
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
    ./dconf.nix
    ./books
  ];

  home = {
    username = "megadrage";
    homeDirectory = "/home/megadrage";
    stateVersion = "24.05";
    packages = with pkgs; [
      mission-center
      cloudflare-warp
      qbittorrent
      hiddify-app
      pavucontrol
      rocketchat-desktop
      vivaldi
      obsidian
      hyprshot
      okular
      vesktop
    ];
  };

  shellAliases = {
    l =
      "eza -bgf --header --git --color=always --group-directories-first --icons always";
    llm =
      "eza -lbgd --header --git --sort=modified --color=always --group-directories-first --icons always";
    lS = "eza -1 --color=always --group-directories-first --icons always";
    lt =
      "eza --tree --level=3 --color=always --group-directories-first --icons always";
    ldot = "eza -a | grep -E '^.'";
    vim = "nvim";
  };
}
