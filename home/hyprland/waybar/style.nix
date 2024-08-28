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
        font-family: "JetBrainsMono Nerd Font,JetBrainsMono NF";
    }

    window#waybar {
        background-color: transparent;
        color: ${palette.base07};
    } 

    #workspaces {
        background: ${palette.base05};
        color: ${palette.base07};
        margin: 3px 3px;
        padding: 3px 2px;
        border-radius: 15px;
    }

    #workspaces button {
        background: ${palette.base05};
        color: ${palette.base07};
        border-radius: 15px;
        padding: 0px 2px;
        transition: all 0.3s ease-in-out;
    }
    #workspaces button.active {
        background-color: ${palette.base09};
        color: ${palette.base07};
        border-radius: 15px;
        min-width: 50px;
        background-size: 400% 400%;
        transition: all 0.3s ease-in-out;
    }

    #workspaces button:hover {
        background-color: ${palette.base0B};
        color: ${palette.base07};
        border-radius: 10px;
        min-width: 50px;
        background-size: 400% 400%;
    }

    #workspaces button.urgent {
        background-color: ${palette.base08};
        color: ${palette.base05};
        border-radius: 15px;
    }

    #custom-startmenu {
        background: ${palette.base05};
        color: ${palette.base07};
        font-size: 24px;
        margin-left: 4px;
        padding-left: 4px;
        padding-right: 10px;
        border-radius: 0% 60% 0% 0%;
    }

    #custom-exit {
        background: ${palette.base05};
        color: ${palette.base07};
        margin: 3px 3px;
        padding: 3px 2px;
        font-size: 24px;
        margin-right: 8px;
        margin-left: 4px;
        border-radius: 60% 0% 0% 0%;
    }
    #clock {
        background: ${palette.base05};
        color: ${palette.base07};
        margin: 3px 3px;
        padding: 3px 2px;        
        padding-left: 10px;
        padding-right: 10px;
        border-radius: 15px;
        font-size: 14px;
        margin-right: 4px;
    } 

    #mode, #window, #pulseaudio, #network, #battery {
        padding-left: 7px;
        padding-right: 7px;
    }

    #tray {
        padding-right: 4px;
        padding-left: 10px;
    }
  '';
}
