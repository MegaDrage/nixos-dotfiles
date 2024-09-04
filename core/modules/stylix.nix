{ pkgs, ... }: {
  stylix = {
    enable = true;
    image = ../../sources/images/dragon-profile.jpg;
    polarity = "dark";
    fonts = {
      monospace = {
        package = pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; };
        name = "JetBrainsMono Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };
      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };
      sizes = {
        applications = 12;
        terminal = 14;
        desktop = 10;
        popups = 10;
      };
    };
  };
}
