{ pkgs, ... }: {
  users.defaultUserShell = pkgs.zsh;
  environment = {
    shellAliases = {
      l =
        "eza -bgf --header --git --color=always --group-directories-first --icons always";
      llm =
        "eza -lbgd --header --git --sort=modified --color=always --group-directories-first --icons always";
      lS = "eza -1 --color=always --group-directories-first --icons always";
      lt =
        "eza --tree --level=3 --color=always --group-directories-first --icons always";
      ldot = "eza -a | grep -E '^.'";
      vim = "nvim";
    };
  };
}
