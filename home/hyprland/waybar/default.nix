{
  programs.waybar = {
    enable = true;
    settings = [{
      layer = "top";
      position = "top";
      modules-center = [ "hyprland/workspaces" ];
      modules-left =
        [ "custom/startmenu" "hyprland/window" "pulseaudio" "cpu" "memory" ];
      modules-right =
        [ "custom/notification" "custom/exit" "battery" "tray" "clock" ];

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
        # format = if clock24h == true then '' {:L%H:%M}'' else '' {:L%I:%M %p}'';
        format = " {:L%H:%M}";
        tooltip = true;
        tooltip-format = ''
          <big>{:%A, %d.%B %Y }</big>
          <tt><small>{calendar}</small></tt>'';
      };
      "hyprland/window" = {
        max-length = 22;
        separate-outputs = false;
        rewrite = { "" = ""; };
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

      "tray" = { spacing = 12; };
      "pulseaudio" = {
        format = "{icon} {volume}% {format_source}";
        format-bluetooth = "{volume}% {icon} {format_source}";
        format-bluetooth-muted = " {icon} {format_source}";
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
      "custom/exit" = {
        tooltip = false;
        format = "";
        on-click = "sleep 0.1 && wlogout";
      };
      "custom/startmenu" = {
        tooltip = true;
        format = "";
        on-click = "sleep 0.1 && rofi-launcher";
      };

      "custom/notification" = {
        tooltip = false;
        format = "{icon} {}";
        format-icons = {
          notification = "<span foreground='red'><sup></sup></span>";
          none = "";
          dnd-notification = "<span foreground='red'><sup></sup></span>";
          dnd-none = "";
          inhibited-notification =
            "<span foreground='red'><sup></sup></span>";
          inhibited-none = "";
          dnd-inhibited-notification =
            "<span foreground='red'><sup></sup></span>";
          dnd-inhibited-none = "";
        };
        return-type = "json";
        exec-if = "which swaync-client";
        exec = "swaync-client -swb";
        on-click = "sleep 0.1 && task-waybar";
        escape = true;
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
    }];
  };
}
