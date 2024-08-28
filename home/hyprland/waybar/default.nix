{ pkgs, ... }:
let calendar = "${pkgs.gnome-calendar}/bin/gnome-calendar";
in {
  imports = [ ./style.nix ];
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        modules-center = [ "clock" ];
        modules-left = [ "custom/startmenu" "hyprland/workspaces" ];
        modules-right = [ "network" "pulseaudio" "battery" ];

        "network" = {
          format-wifi = "  {signalStrength}%|";
          format-ethernet = "󰈀 100% ";
          tooltip-format = "Connected to {essid} {ifname} via {gwaddr}";
          format-linked = "{ifname} (No IP)";
          format-disconnected = "󰖪 0% ";
        };
        "hyprland/workspaces" = {
          format = "{name}";
          format-icons = {
            default = " ";
            active = " ";
            urgent = " ";
          };
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
        };
        "clock" = {
          format = " {:%a, %d %b, %I:%M %p}";
          on-click = "${calendar}";
          tooltip-format = ''
            <big>{:%A, %d.%B %Y }</big>
            <tt><small>{calendar}</small></tt>'';
          calendar = {
            mode = "month";
            weeks-pos = "right";
            format = {
              months = "<span color='#ffead3'><b>{}</b></span>";
              days = "<span color='#ecc6d9'><b>{}</b></span>";
              weeks = "<span color='#99ffdd'><b>W{}</b></span>";
              weekdays = "<span color='#ffcc66'><b>{}</b></span>";
              today = "<span color='#ff6699'><b><u>{}</u></b></span>";
            };
          };
        };

        "pulseaudio" = {
          format = "{icon} {volume}% {format_source}|";
          format-bluetooth = "{volume}% {icon} {format_source}|";
          format-bluetooth-muted = " {icon} {format_source}|";
          format-muted = " {format_source}";
          format-source = " {volume}%";
          format-source-muted = "";
          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = [ "" "" "" ];
          };
          on-click = "sleep 0.1 && pavucontrol";
        };
        "custom/startmenu" = {
          format = "";
          on-click = "sleep 0.1 && rofi-launcher";
        };

        "battery" = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          format-charging = "󰂄 {capacity}%";
          format-plugged = "󱘖 {capacity}%";
          format-icons = [ "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹" ];
          on-click = "";
          tooltip = false;
        };
      };
      secondBar = {
        layer = "bottom";
        position = "bottom";
        modules-left = [ "hyprland/window" ];
        modules-right = [ "tray" "memory" "cpu" "custom/exit" ];

        "hyprland/window" = {
          max-length = 22;
          separate-outputs = false;
          rewrite = { "" = ""; };
        };
        "tray" = { spacing = 12; };
        "custom/exit" = {
          tooltip = false;
          format = "";
          on-click = "sleep 0.1 && wlogout";
        };
        "memory" = {
          interval = 5;
          format = " {}%";
          tooltip = true;
        };
        "cpu" = {
          interval = 5;
          format = " {usage:2}%";
          tooltip = true;
        };
        "disk" = {
          format = " {free}";
          tooltip = true;
        };
      };
    };
  };
}
