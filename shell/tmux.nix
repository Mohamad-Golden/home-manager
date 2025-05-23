{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    terminal = "screen-256color";
    # terminal = "xterm-256color";
    plugins = with pkgs.tmuxPlugins; [
      catppuccin
    ];
    extraConfig = ''
      # needed for vim
      set-option -g allow-passthrough on

      # switch between windows
      bind-key -n M-H previous-window
      bind-key -n M-L next-window
      # use terminal colors
      set-option -ga terminal-overrides ",xterm-256color:Tc"
    '';
  };
}
