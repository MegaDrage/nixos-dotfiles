{
  programs.kitty = {
    enable = true;
      font = {
        name = "JetBrainsMono Nerd Font";
        size = 14;
      };
    shellIntegration.enableZshIntegration = true;
    theme = "Catppuccin-Macchiato";
    settings = {
	shell_integration = "enabled";
	scrollback_lines = "2000";
	scrollback_indicator_opacity = "1.0";

	remember_window_size = "yes";
	initial_window_width = "640";
	initial_window_height = "400";

	sync_to_monitor = "yes";
	underline_hyperlinks = "hover";

	background_opacity = "10";
	background_blur = "5";
	selection_foreground = "none";
	selection_background = "none";
     };
  };
}
