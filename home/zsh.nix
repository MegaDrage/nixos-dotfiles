{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
    shellAliases = {
      # ls = "eza --color=always --group-directories-first --icons";
      # ll = "eza -la --icons --octal-permissions --group-directories-first";
      # l =
      #   "eza -bgf --header --git --color=always --group-directories-first --icons";
      # llm =
      #   "eza -lbgd --header --git --sort=modified --color=always --group-directories-first --icons";
      # la = "eza --long --all --group --group-directories-first";
      # lx =
      #   "eza -lbhhigumusa@ --time-style=long-iso --git --color-scale --color=always --group-directories-first --icons";

      # lS = "eza -1 --color=always --group-directories-first --icons";
      # lt =
      #   "eza --tree --level=2 --color=always --group-directories-first --icons";
      # ldot = "eza -a | grep -E '^.'";
    };
    initExtra = ''eval "$(direnv hook zsh)"'';
  };
}
