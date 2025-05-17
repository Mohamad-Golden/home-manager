{
  programs.nixvim.colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "macchiato";
      term_colors = true;
      no_underline = true;
      # disable_underline = true;
      integrations = {
        cmp = false;
        blink_cmp = true;
        gitsigns = true;
        nvimtree = true;
        treesitter = true;
        telescope = {
          enable = true;
        };
        fzf = true;
        diffview = true;
        fidget = true;
        hop = true;
        dadbod_ui = true;
      };
    };
  };
}
