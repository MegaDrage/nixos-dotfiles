{pkgs, ...}:
{
  fonts = {
    packages = with pkgs; [
      (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "JetBrainsMono" "SourceCodePro" ]; })
    ];
    fontconfig = {
      defaultFonts = {
        serif = [  "JetBrainsMono Nerd Font" "Source Code Pro" ];
        sansSerif = [ "JetBrainsMono Nerd Font" "Source Code Pro" ];
        monospace = [ "JetBrainsMono Nerd Font" ];
      };
    };
  };
}
