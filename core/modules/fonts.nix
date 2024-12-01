{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      jetbrains-mono
      iosevka
      fira-code
      source-code-pro
      corefonts
      vistafonts
    ];
  };
}
