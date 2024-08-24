let
  palette = {
    base00 = "#232136";
    base01 = "#2a273f";
    base02 = "#393552";
    base03 = "#6e6a86";
    base04 = "#908caa";
    base05 = "#e0def4";
    base06 = "#e0def4";
    base07 = "#56526e";
    base08 = "#eb6f92";
    base09 = "#f6c177";
    base0A = "#ea9a97";
    base0B = "#3e8fb0";
    base0C = "#9ccfd8";
    base0D = "#c4a7e7";
    base0E = "#f6c177";
    base0F = "#56526e";
  };
in {
  programs.waybar.style = ''
    * {
        border: none;
        border-radius: 0;
        font-family: JetBrainsMono Nerd Font Mono;
    }
    window#waybar {
        background-color: transparent;
        color: ${palette.foreground};
    } 
          #workspaces {
         background: ${palette.background};
         color: ${palette.foreground};
         margin: 3px 3px;
         padding: 3px 2px;
         border-radius: 15px;
      }
      #workspaces button {
         background: ${palette.background};
         color: ${palette.foreground};
         border-radius: 15px;
         padding: 0px 2px;
         transition: all 0.3s ease-in-out;
      }
  '';
}
