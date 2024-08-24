{ pkgs, ... }:
let
  touchpad-control = pkgs.writeShellApplication {
    name = "touchpad-control";
    text = ''
      # /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
      # For disabling touchpad.
      # Edit the Touchpad_Device on ~/.config/hypr/UserConfigs/Laptops.conf according to your system
      # use hyprctl devices to get your system touchpad device name
      # source https://github.com/hyprwm/Hyprland/discussions/4283?sort=new#discussioncomment-8648109

      notif="$HOME/.config/swaync/images/bell.png"
      notification_timeout=500
      export STATUS_FILE="$XDG_RUNTIME_DIR/touchpad.status"

      enable_touchpad() {
          printf "true" >"$STATUS_FILE"
          notify-send -t "''${notification_timeout}" -u low -i "$notif"  "Enabling touchpad"
          hyprctl keyword "$TOUCHPAD_ENABLED" "true" -r
      }

      disable_touchpad() {
          printf "false" >"$STATUS_FILE"
          notify-send "''${notification_timeout}" -u low -i "$notif" "Disabling touchpad"
          hyprctl keyword "$TOUCHPAD_ENABLED" "false" -r
      }

      if ! [ -f "$STATUS_FILE" ]; then
        enable_touchpad
      else
        if [ "$(cat "''${STATUS_FILE}")" = "true" ]; then
          disable_touchpad
        elif [ "$(cat "''${STATUS_FILE}")" = "false" ]; then
          enable_touchpad
        fi
      fi
    '';
  };
in { environment.systemPackages = [ touchpad-control ]; }
