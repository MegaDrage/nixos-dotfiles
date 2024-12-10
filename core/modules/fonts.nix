{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      # nerd-fonts.jetbrains-mono
      jetbrains-mono
      nerd-fonts.iosevka
      nerd-fonts.fira-code
      corefonts
      vistafonts
    ];
    fontDir.enable = true;
  };
}
