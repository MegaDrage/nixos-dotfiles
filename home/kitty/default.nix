{
  programs.kitty = {
    enable = true;
    # font = {
    #   name = "JetBrainsMono Nerd Font";
    #   size = 14;
    # };
    shellIntegration.enableZshIntegration = true;
    theme = "Catppuccin-Macchiato";
    settings = {
      shell_integration = "enabled";
      scrollback_lines = "2000";

      remember_window_size = "yes";

      sync_to_monitor = "yes";
    };
  };
}
