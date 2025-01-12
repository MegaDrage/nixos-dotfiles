{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      # nerd-fonts.jetbrains-mono
      nerd-fonts.jetbrains-mono
      ibm-plex
      inter
      nerd-fonts.iosevka
      nerd-fonts.fira-code
      corefonts
      vistafonts
    ];
    fontDir.enable = true;
  };
}
