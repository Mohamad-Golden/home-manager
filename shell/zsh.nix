{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    plugins = [
      {
        name = "powerlevel10k-config";
        src = ./scripts;
        file = "p10k.zsh";
      }
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git" # Common plugin for git aliases
        "colored-man-pages"
        "z" # Jump to frequently used directories
      ];
    };

    shellAliases = {
      dpy = "python -m debugpy --listen 5678";
    };

  };

  programs.bash = {
    enable = true;

    bashrcExtra = ''
      # Auto-start zsh from bash if in an interactive shell
      if [ -t 1 ] && command -v zsh >/dev/null 2>&1; then
        exec zsh
      fi
    '';
  };

}
