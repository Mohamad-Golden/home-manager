{
  programs.nixvim.plugins.vim-matchup = {
    enable = true;
    treesitter = {
      enable = true;
    };
    settings = {
      matchparen_insert_timeout = 600;
      matchparen_timeout = 900;
    };
  };
}
